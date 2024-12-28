import 'package:audi/ropa/cart.dart';
import 'package:audi/ropa/pages.dart';
import 'package:flutter/material.dart';
import 'bottom.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  void navigateBottomBar (int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _ropa = [
    const Pages(),

    const Cart(),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: Bottom(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _ropa[_selectedIndex],
    );
  }
}
