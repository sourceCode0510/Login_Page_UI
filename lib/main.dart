import 'package:flutter/material.dart';
// import the home_screen
import './screens/home_screen.dart';
// let's run the default code...
// now let's delete the code and start from 0.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // remove the debug banner
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
