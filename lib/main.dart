import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Profilepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hirdan Aggarwal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.montserratTextTheme(
            Theme.of(context).textTheme,)
      ),
      home: Profilepage(),
    );
  }
}