import 'package:flutter/material.dart';

import 'addtocart.dart';

class Gorra extends StatefulWidget {
  const Gorra({super.key});

  @override
  State<Gorra> createState() => _GorraState();
}

class _GorraState extends State<Gorra> {
  int currentNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AddtoCart(currentNumber: currentNumber, onAdd: (){
        setState(() {
          currentNumber++;
        });
      },
        onRemove: (){
          if(currentNumber!=1){
            setState(() {
              currentNumber--;
            });
          }
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Padding(
        padding: const EdgeInsets.only(left: 18.0,right: 18),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.share_outlined),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),

                ],
              ),
            ),
            SizedBox(height: 15,),
            Image(
              height: 350,
              width: 350,
              image: AssetImage("ima/5.png"),),
            Row(
              children: [
                Icon(Icons.on_device_training_sharp,color: Colors.grey,),
                Text('Codigo: 153-654',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                ),),
              ],
            ),
            SizedBox(height: 10,),
            Text("Gorra Algodon",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.black,
            ),),
            Text('',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black,
            ),),
            SizedBox(height: 14,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.star,color: Colors.orange,),
                Text('\$65.00',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blue,
                ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
