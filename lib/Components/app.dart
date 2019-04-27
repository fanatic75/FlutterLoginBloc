import 'package:flutter/material.dart';
import "./loginscreen.dart";
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bloc App",
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}