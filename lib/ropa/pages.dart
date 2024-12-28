import 'package:audi/prendas/product.dart';
import 'package:audi/ropa/datailpage.dart';
import 'package:flutter/material.dart';
import '../Ventanas/categorias.dart';
import '../prendas/gorra.dart';
import '../prendas/llave.dart';
import '../prendas/pro.dart';
import '../prendas/prod.dart';
import '../prendas/proda.dart';
import '../prendas/prode.dart';
import '../prendas/prodi.dart';
import '../prendas/prodo.dart';
import '../prendas/produ.dart';
import '../prendas/produc.dart';
import '../prendas/producto.dart';
import '../prendas/termo.dart';

class Pages extends StatelessWidget {
  const Pages ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0, left: 18, right: 10),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 40,
                          color: Colors.grey,
                        ),
                        hintText: 'Search..',
                        hintStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Badge(
                    label: const Text('1'),
                    child: const Image(
                      height: 30,
                      width: 30,
                      image: AssetImage('assets/message.png'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Badge(
                    label: const Text('9+'),
                    child: const Image(
                      height: 30,
                      width: 30,
                      image: AssetImage('assets/shopping.png'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 380,
              width: 370,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/anuncio.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              child: const Text(
                'Categorias',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
            ),
            const Categorias(),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Productos",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 18, right: 18),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Product()));
                    },
                    child: Container(
                      height: 257,
                      width: 170,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Image(
                            height: 124,
                            image:  AssetImage("ima/1.png"),),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Camisa',style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),),
                                SizedBox(height: 5,),
                                Text("Quattro T Shirt Mens Light",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.orange,),
                                    SizedBox(height: 5,),
                                    Text('4,9',style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                    SizedBox(width: 10,),
                                    Text('\$771.46',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.blue,
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DatailPage()));
                    },
                    child: Container(
                      height: 257,
                      width: 170,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Image(
                            height: 124,
                            image:  AssetImage("images/a.png"),),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Camisa',style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),),
                                SizedBox(height: 5,),
                                Text("Camisa Audi Sport-\nDakar Mens Belge",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.orange,),
                                    SizedBox(height: 5,),
                                    Text('4,9',style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                    SizedBox(width: 10,),
                                    Text('\$970.68',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.blue,
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 18, right: 18),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Pro()));
                    },
                    child: Container(
                      height: 257,
                      width: 170,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Image(
                            height: 124,
                            image:  AssetImage("images/c.png"),),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Camisa',style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),),
                                SizedBox(height: 5,),
                                Text("Quattro Shirt Mens Grey",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.orange,),
                                    SizedBox(height: 5,),
                                    Text('4,9',style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                    SizedBox(width: 10,),
                                    Text('\$630.47',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.blue,
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Prod()));
                    },
                    child: Container(
                      height: 257,
                      width: 170,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Image(
                            height: 124,
                            image:  AssetImage("images/d.png"),),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Camisa',style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),),
                                SizedBox(height: 5,),
                                Text("Quattro T Shirt Mens Light",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.orange,),
                                    SizedBox(height: 5,),
                                    Text('4,9',style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                    SizedBox(width: 10,),
                                    Text('\$771.46',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.blue,
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 18, right: 18),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Produ()));
                    },
                    child: Container(
                      height: 257,
                      width: 170,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Image(
                            height: 124,
                            image:  AssetImage("images/f.png"),),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Camisa',style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),),
                                SizedBox(height: 5,),
                                Text("Camiseta Audi-\nAnillos Ments grey",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.orange,),
                                    SizedBox(height: 5,),
                                    Text('4,9',style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                    SizedBox(width: 10,),
                                    Text('\$771.46',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.blue,
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Produc()));
                    },
                    child: Container(
                      height: 257,
                      width: 170,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Image(
                            height: 124,
                            image:  AssetImage("images/g.png"),),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Camisa',style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),),
                                SizedBox(height: 5,),
                                Text("Quattro Shirt Mens Grey",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.orange,),
                                    SizedBox(height: 5,),
                                    Text('4,9',style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                    SizedBox(width: 10,),
                                    Text('\$777.06',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.blue,
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 18, right: 18),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Producto()));
                    },
                    child: Container(
                      height: 257,
                      width: 170,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Image(
                            height: 124,
                            image:  AssetImage("images/i.png"),),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Playera',style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),),
                                SizedBox(height: 5,),
                                Text("Audi Poloshirt Ments Red",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.orange,),
                                    SizedBox(height: 5,),
                                    Text('4,9',style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                    SizedBox(width: 10,),
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
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Prode()));
                    },
                    child: Container(
                      height: 257,
                      width: 170,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Image(
                            height: 124,
                            image:  AssetImage("images/j.png"),),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Playera',style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),),
                                SizedBox(height: 5,),
                                Text("Audi Poloshirt Mens Black",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.orange,),
                                    SizedBox(height: 5,),
                                    Text('4,9',style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                    SizedBox(width: 10,),
                                    Text('\$1522.55',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.blue,
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 18, right: 18),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Proda()));
                    },
                    child: Container(
                      height: 257,
                      width: 170,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Image(
                            height: 124,
                            image:  AssetImage("images/o.png"),),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Chamarra',style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),),
                                SizedBox(height: 5,),
                                Text("Chamarra Algodon-Pliest",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.orange,),
                                    SizedBox(height: 5,),
                                    Text('4,9',style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                    SizedBox(width: 10,),
                                    Text('\$750.00',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.blue,
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Prodi()));
                    },
                    child: Container(
                      height: 257,
                      width: 170,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Image(
                            height: 124,
                            image:  AssetImage("ima/4.png"),),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Chamarra',style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),),
                                SizedBox(height: 5,),
                                Text("Audi Fleece Jacket Mens Black",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.orange,),
                                    SizedBox(height: 5,),
                                    Text('4,9',style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                    SizedBox(width: 10,),
                                    Text('\$1325.02',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.blue,
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 18, right: 18),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Prodo()));
                    },
                    child: Container(
                      height: 257,
                      width: 170,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Image(
                            height: 124,
                            image:  AssetImage("images/p.png"),),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Chamarra',style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),),
                                SizedBox(height: 5,),
                                Text("Chamarra Audi",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.orange,),
                                    SizedBox(height: 5,),
                                    Text('4,9',style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                    SizedBox(width: 10,),
                                    Text('\$750.00',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.blue,
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Llave()));
                    },
                    child: Container(
                      height: 257,
                      width: 170,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Image(
                            height: 124,
                            image:  AssetImage("images/q.png"),),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Accesorios',style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),),
                                SizedBox(height: 5,),
                                Text("Llavero r34",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.orange,),
                                    SizedBox(height: 5,),
                                    Text('4,9',style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                    SizedBox(width: 10,),
                                    Text('\$00.00',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.blue,
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 18, right: 18),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Gorra()));
                    },
                    child: Container(
                      height: 257,
                      width: 170,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Image(
                            height: 124,
                            image:  AssetImage("ima/5.png"),),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Accesoriosw',style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),),
                                SizedBox(height: 5,),
                                Text("Gorra Algodon",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.orange,),
                                    SizedBox(height: 5,),
                                    Text('4,9',style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                    SizedBox(width: 10,),
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
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Termo()));
                    },
                    child: Container(
                      height: 257,
                      width: 170,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Image(
                            height: 124,
                            image:  AssetImage("images/r.png"),),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Accesorios',style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),),
                                SizedBox(height: 5,),
                                Text("Termo 5-HG",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.orange,),
                                    SizedBox(height: 5,),
                                    Text('4,9',style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                    SizedBox(width: 10,),
                                    Text('\$250.00',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.blue,
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
