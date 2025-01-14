import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class AddtoCart extends StatelessWidget {
  final Function() onAdd;
  final Function() onRemove;
  AddtoCart({super.key,
    required this.currentNumber,
    required this.onAdd,
    required this.onRemove});

  int currentNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.black,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    IconButton(onPressed: onRemove,
                      iconSize: 18,
                      icon: Icon(Ionicons.remove_outline,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 5,),
                    Text(currentNumber.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    IconButton(onPressed: onAdd,
                      iconSize: 18,
                      icon: Icon(Ionicons.add_outline,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(60),
                ),
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: const Text('Add to Cart',style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ],
          ),
        ),
    );
  }
}
