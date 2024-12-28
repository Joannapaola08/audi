import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My Cart',
          style: TextStyle(
              fontWeight: FontWeight.bold),
        ),
        leadingWidth: 60,
        leading: Padding(padding: EdgeInsets.only(left: 5),
        child: IconButton(onPressed: (){},
          style: IconButton.styleFrom(
            backgroundColor: Colors.green
          ),
          icon: Icon(Ionicons.chevron_back),
        ),
        ),
      ),
    );
  }
}
