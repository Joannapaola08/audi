import 'package:flutter/material.dart';

import 'addtocart.dart';

class Producto extends StatefulWidget {
  const Producto({super.key});

  @override
  State<Producto> createState() => _ProductoState();
}

class _ProductoState extends State<Producto> {
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
              image: AssetImage("images/i.png"),),
            Row(
              children: [
                Icon(Icons.on_device_training_sharp,color: Colors.grey,),
                Text('Codigo: 132001513',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                ),),
              ],
            ),
            SizedBox(height: 10,),
            Text("Audi Poloshirt Ments Red",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.black,
            ),),
            Text('T: M',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black,
            ),),
            SizedBox(height: 14,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.star,color: Colors.orange,),
                Text('\$1037.33',style: TextStyle(
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
