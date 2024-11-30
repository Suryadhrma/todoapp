import 'package:flutter/material.dart';
import 'pages/signin_page.dart'; // Import file Sign-In Page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign In Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignInPage(), // Menampilkan Sign-In Page
    );
  }
}
