import 'package:flutter/material.dart';
import "./loginscreen.dart";
import "../blocs/provider.dart";

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
        child: MaterialApp(
      title: "Bloc App",
      home: Scaffold(
        body: LoginScreen(),
      ),
    ));
  }
}
