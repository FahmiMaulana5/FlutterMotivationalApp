import 'package:flutter/material.dart';
import 'package:MotivationalApp/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MotivationalApp',
      initialRoute: '/homePage',
      routes: {
        '/homePage': (context) => HomePage()
      },
    );
  }
}