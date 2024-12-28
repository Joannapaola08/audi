import 'package:animated_switch/animated_switch.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>(); // GlobalKey para el formulario
  bool _isSecurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            const Image(
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
                image: AssetImage('assets/car.jpg')),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.black,
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0.15),
                    Colors.black.withOpacity(0.8),
                  ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter
                  )
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Login', style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(height: 30,),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Email Address',
                          label: Text('Email Address'),
                          fillColor: Color(0xffD8D8DD),
                          filled: true,
                        ),
                        validator: (value) {
                          if(value == null || value.isEmpty){
                            return 'Por favor ingresa tu correo electrónico';
                          }
                          String pattern =
                              r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
                          RegExp regex = RegExp(pattern);
                          if (!regex.hasMatch(value)) {
                            return 'Por favor ingresa un correo electrónico válido';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: TextFormField(
                        obscureText: _isSecurePassword,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          label: Text('Password'),
                          fillColor: Color(0xffD8D8DD),
                          filled: true,
                          suffixIcon: togglePassword(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor ingresa tu contraseña';
                          }
                          if (value.length < 6) {
                            return 'La contraseña debe tener al menos 6 caracteres';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 19, top: 8, right: 19),
                      child: Row(
                        children: [
                          AnimatedSwitch(
                            colorOff: Color(0xffA89F99),
                          ),
                          SizedBox(width: 5),
                          Text('Remenber me', style: TextStyle(
                            color: Colors.grey,
                          ),),
                          Spacer(),
                          Text('Forgot Password', style: TextStyle(
                            color: Colors.grey,
                          ),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomeScreen()), // Navega a HomeScreen
                            );
                          }
                        },
                        child: const Text(
                          'Login',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: const StadiumBorder(),
                          elevation: 20,
                          minimumSize: const Size.fromHeight(50),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0, right: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('-----------',
                            style: TextStyle(color: Colors.white, fontSize: 30),),
                          Text('Or Login With',
                            style: TextStyle(color: Colors.white,),),
                          Text('-----------',
                            style: TextStyle(color: Colors.white, fontSize: 30),),
                        ],
                      ),
                    ),

                  ],
                ),
              )
            ),
          ]
      ),
    );
  }

  Widget togglePassword() {
    return IconButton(onPressed: () {
      setState(() {
        _isSecurePassword = !_isSecurePassword;
      });
    },
      icon: _isSecurePassword ? Icon(Icons.visibility_off) : Icon(
          Icons.visibility),
      color: Colors.grey,);
  }
}
