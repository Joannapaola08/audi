import 'package:flutter/material.dart';
import 'dart:async';

class Reparaciones extends StatefulWidget {
  const Reparaciones({super.key});

  @override
  State<Reparaciones> createState() => _ReparacionesState();
}

class _ReparacionesState extends State<Reparaciones> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  String? repairDetails;
  final List<Map<String, dynamic>> appointments = []; // Lista de citas

  final TimeOfDay startTime = const TimeOfDay(hour: 8, minute: 0);
  final TimeOfDay endTime = const TimeOfDay(hour: 17, minute: 0);

  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _checkAppointments(); // Verificar citas al iniciar
    // Opción para verificar periódicamente (por ejemplo, cada minuto)
    _timer = Timer.periodic(const Duration(minutes: 1), (timer) {
      _checkAppointments();
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  // Método para seleccionar la fecha
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(), // No permitir fechas pasadas
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  // Método para seleccionar la hora
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null && picked != selectedTime) {
      if (_isWithinWorkingHours(picked)) {
        if (!_isTimeSlotAvailable(picked)) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('La hora seleccionada ya está ocupada.'),
            ),
          );
        } else {
          setState(() {
            selectedTime = picked;
          });
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Por favor selecciona un horario entre 8:00 a.m. y 5:00 p.m.'),
          ),
        );
      }
    }
  }

  // Verifica si una hora está dentro del horario laboral
  bool _isWithinWorkingHours(TimeOfDay time) {
    final int timeMinutes = time.hour * 60 + time.minute;
    final int startMinutes = startTime.hour * 60 + startTime.minute;
    final int endMinutes = endTime.hour * 60 + endTime.minute;
    return timeMinutes >= startMinutes && timeMinutes <= endMinutes;
  }

  // Verifica si un horario está disponible
  bool _isTimeSlotAvailable(TimeOfDay time) {
    if (selectedDate == null) return true;
    final DateTime selectedDateTime = DateTime(
      selectedDate!.year,
      selectedDate!.month,
      selectedDate!.day,
      time.hour,
      time.minute,
    );
    return !appointments.any((appointment) => appointment['datetime'] == selectedDateTime);
  }

  // Método para verificar y gestionar citas pasadas
  void _checkAppointments() {
    final now = DateTime.now();
    List<Map<String, dynamic>> passedAppointments = [];
    bool hasRemoved = false;

    setState(() {
      appointments.removeWhere((appointment) {
        if (appointment['datetime'].isBefore(now)) {
          passedAppointments.add(appointment);
          hasRemoved = true; // Marca como true si se elimina una cita.
          return true;
        }
        return false;
      });
    });

    if (hasRemoved) { // Verifica si se eliminó algo.
      for (var appointment in passedAppointments) {
        _showRecheduleDialog(appointment);
      }
    }
  }

  // Mostrar diálogo para reagendar
  void _showRecheduleDialog(Map<String, dynamic> appointment) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Cita Vencida'),
        content: Text(
          'La cita programada para el ${appointment['datetime'].day}/${appointment['datetime'].month}/${appointment['datetime'].year} ha expirado. ¿Deseas reagendar?',
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                selectedDate = appointment['datetime'];
                selectedTime = TimeOfDay.fromDateTime(appointment['datetime']);
                repairDetails = appointment['details'];
                appointments.remove(appointment);
              });
              Navigator.pop(context);
            },
            child: const Text('Sí, Reagendar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agendar Cita - Reparaciones'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Selecciona la fecha y hora de tu cita:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () => _selectDate(context),
                  child: const Text('Seleccionar Fecha'),
                ),
                Text(
                  selectedDate == null
                      ? 'No seleccionada'
                      : '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () => _selectTime(context),
                  child: const Text('Seleccionar Hora'),
                ),
                Text(
                  selectedTime == null
                      ? 'No seleccionada'
                      : selectedTime!.format(context),
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Detalles de la reparación',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                repairDetails = value;
              },
            ),
            const SizedBox(height: 40),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (selectedDate != null && selectedTime != null && repairDetails != null && repairDetails!.isNotEmpty) {
                    final appointmentDateTime = DateTime(
                      selectedDate!.year,
                      selectedDate!.month,
                      selectedDate!.day,
                      selectedTime!.hour,
                      selectedTime!.minute,
                    );

                    if (_isTimeSlotAvailable(selectedTime!)) {
                      setState(() {
                        appointments.add({
                          'datetime': appointmentDateTime,
                          'details': repairDetails,
                          'status': 'Programada',
                        });
                      });

                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Cita Agendada'),
                          content: Text(
                            'Tu cita ha sido agendada para el ${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year} a las ${selectedTime!.format(context)}.',
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('Aceptar'),
                            ),
                          ],
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('El horario seleccionado ya está ocupado. Intenta con otro.'),
                        ),
                      );
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Por favor selecciona fecha, hora y escribe los detalles.'),
                      ),
                    );
                  }
                },
                child: const Text('Confirmar Cita'),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Citas Programadas:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: appointments.length,
              itemBuilder: (context, index) {
                final appointment = appointments[index];
                final dateTime = appointment['datetime'] as DateTime;
                final details = appointment['details'] as String;
                final status = appointment['status'] as String;

                return Card(
                  child: ListTile(
                    title: Text(
                      '${dateTime.day}/${dateTime.month}/${dateTime.year} - ${TimeOfDay.fromDateTime(dateTime).format(context)}',
                    ),
                    subtitle: Text('Detalles: $details\nEstado: $status'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit, color: Colors.blue),
                          onPressed: () {
                            setState(() {
                              selectedDate = dateTime;
                              selectedTime = TimeOfDay.fromDateTime(dateTime);
                              repairDetails = details;
                              appointments.removeAt(index);
                            });
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            setState(() {
                              appointments.removeAt(index);
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
