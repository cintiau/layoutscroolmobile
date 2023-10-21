import 'package:flutter/material.dart';
import 'package:latihanpemob/project/cobalayout.dart';
import 'package:latihanpemob/project/home_page.dart';
import 'package:latihanpemob/project/latihan1.dart';
import 'package:latihanpemob/project/layoutscroll.dart';
import 'package:latihanpemob/project/pertemuan5.dart';
//import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //textTheme: GoogleFonts.plusJakartaSansTextTheme(Theme.of(context).textTheme),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const scrol(),
    );
  }
}
























































































