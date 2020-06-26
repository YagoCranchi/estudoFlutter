import 'package:br/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: Color.fromARGB(255, 4, 125, 141)
    ),
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}