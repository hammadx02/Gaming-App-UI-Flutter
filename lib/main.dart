import 'package:flutter/material.dart';

import 'package:gaming_app_ui/auth/verification_screen4.dart';

import 'colors/material_color.dart';

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
      theme: ThemeData(
        primarySwatch: createMaterialColor(
          const Color(0xffFA5075),
        ),
      ),
      home: VerficationScreen4(),
    );
  }
}
