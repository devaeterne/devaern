import 'package:flutter/material.dart';
import 'screens/home/home_screen.dart'; // Giriş ekranı burası olacak

void main() {
  runApp(const DevaernApp());
}

class DevaernApp extends StatelessWidget {
  const DevaernApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Devaern',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Inter',
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
      ),
      home: const HomeScreen(), // Giriş noktası
    );
  }
}
