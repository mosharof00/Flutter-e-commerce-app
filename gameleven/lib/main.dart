import 'package:flutter/material.dart';
import 'package:gameleven/src/skip_pages/skip_1.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Habit App",
        theme: ThemeData(
          textTheme: GoogleFonts.manropeTextTheme(Theme.of(context).textTheme),
        ),
        debugShowCheckedModeBanner: false,
        home: Skip1());
  }
}
