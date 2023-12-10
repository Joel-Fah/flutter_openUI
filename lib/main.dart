import 'package:flutter/material.dart';
import 'package:flutter_openui/ui/pages/home.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter UI 30 Days Challenge',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.urbanistTextTheme()
      ),
      home: const HomePage(),
    );
  }
}