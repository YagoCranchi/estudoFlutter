import 'package:chat/chat_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Flutter',
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
            hintColor: Colors.blue,
            primaryColor: Colors.blue,
            iconTheme: IconThemeData(color: Colors.blue),
            inputDecorationTheme: InputDecorationTheme(
              hintStyle: TextStyle(color: Colors.grey),
            )),
      home: ChatScreen(),
    );
  }
}
