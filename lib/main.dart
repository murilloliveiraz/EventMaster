import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eventmaster/styles/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Text(
              "Event Master",
              style: fonteTitulo(16),
            )
          ],
        ),
      ),
    );
  }
}
