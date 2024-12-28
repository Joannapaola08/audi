import 'package:audi/Ventanas/NavBar.dart';
import 'package:audi/Ventanas/hojalateria.dart';
import 'package:audi/Ventanas/pintura.dart';
import 'package:audi/Ventanas/reparaciones.dart';
import 'package:audi/ropa/homepage.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Audi Service Center'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)
            ),
            child: InkWell(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              splashColor:Colors.yellow,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                   Image(image: AssetImage('assets/boutique.png'),width: 64.0,),
                    SizedBox(height: 10.0,),
                    Text('Boutique',style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Hojalateria()),
                );
              },
              splashColor:Colors.yellow,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Image(image: AssetImage('assets/hojalateria.png'),width: 64.0,),
                    SizedBox(height: 10.0,),
                    Text('Hojalateria',style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Pintura()),
                );
              },
              splashColor:Colors.yellow,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Image(image: AssetImage('assets/pintura.png'),width: 64.0,),
                    SizedBox(height: 10.0,),
                    Text('Pintura',style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
            ),
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Reparaciones()),
                );
              },
              splashColor:Colors.yellow,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Image(image: AssetImage('assets/mechanic.png'),width: 64.0,),
                    SizedBox(height: 10.0,),
                    Text('Reparaciones',style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
