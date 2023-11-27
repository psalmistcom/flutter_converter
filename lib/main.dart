import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App Title here",
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: const Text(
        "This is some text",
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
