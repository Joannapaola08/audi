import 'package:audi/Ventanas/login.dart';
import 'package:audi/Ventanas/splash.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "splash",
      routes: {
        "splash": (context) => const Splash(),
        "home": (context) => const Login(),
      },
    );
  }
}

