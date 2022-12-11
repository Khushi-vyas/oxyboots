import 'package:flutter/material.dart';
import 'package:oxyboots/on_board_1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnBoard1Screen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue.shade50,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
