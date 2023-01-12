import 'package:flutter/material.dart';
import 'package:nba_app/Screens/Home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NBA NOW',
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Helvetica',
      ),
    );
  }
}
