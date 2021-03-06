import 'package:actio_app/screens/home.dart';
import 'package:actio_app/screens/login.dart';
import 'package:actio_app/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Actio Cliente',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
//        iconTheme: new IconThemeData(color: Colors.blue),
        brightness: Brightness.light,
        primaryColor: Colors.blue,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
//      home:
      home: LoginScreen(),
    );
  }
}


