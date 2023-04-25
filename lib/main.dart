import 'package:flutter/material.dart';
import 'package:youtube/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youtube',
      theme: ThemeData(
        primaryColor: const Color(0xFFEA3323),
        colorScheme: const ColorScheme.light(
          secondary: Color(0xFFECECEC),
        ),
      ),
      home: const MainPage(),
    );
  }
}
