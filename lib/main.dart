import 'package:flutter/material.dart';
import 'package:my_first_app/mobile/landing_page.dart';
import 'package:my_first_app/route.dart';

void main() {
  
  runApp(const MyApp());
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
      debugShowCheckedModeBanner: false,
         onGenerateRoute: (settings) => Routes.generateRoute(settings),
         initialRoute: '/',
    );
  }
  }
