import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gaming_app_ui/auth/verification_screen2.dart';
import 'package:gaming_app_ui/screens/splash_screen.dart';
import 'colors/material_color.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: createMaterialColor(
          const Color(0xffFA5075),
        ),
      ),
      home: VerficationScreen2(),
    );
  }
}
