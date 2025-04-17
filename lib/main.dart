import 'package:flutter/material.dart';
import 'package:flutter_app/Tugas_1/register.dart'; // Import halaman register
import 'package:flutter_app/Tugas_1/login.dart'; // Import halaman login
import 'package:flutter_app/home.dart'; // Import halaman home

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/register', // Halaman awal adalah register
      routes: {
        '/register': (context) => const Register(title: 'Register'), // Halaman register
        '/login': (context) => const Login(title: 'Login'), // Halaman login
        '/home': (context) => const Homepage(title: 'Home'), // Halaman home
      },
    );
  }
}

