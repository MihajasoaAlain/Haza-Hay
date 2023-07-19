import 'package:flutter/material.dart';
import './pages/login_page.dart';
import './pages/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MaterialColor myColor = MaterialColor(
      0xFF00275C,
      <int, Color>{
        50: Color(0xFF00275C),
        100: Color(0xFF00275C),
        200: Color(0xFF00275C),
        300: Color(0xFF00275C),
        400: Color(0xFF00275C),
        500: Color(0xFF00275C),
        600: Color(0xFF00275C),
        700: Color(0xFF00275C),
        800: Color(0xFF00275C),
        900: Color(0xFF00275C),
      },
    );
    return MaterialApp(
      title: 'VONJEO',
      theme: ThemeData(
        primarySwatch: myColor,
      ),
      home: const LoginPage(title: 'Login'),
      debugShowCheckedModeBanner: false,
    );
  }
}
