import 'package:actio_app/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EscritorioScreen extends StatelessWidget {
  final PageController _pageController;

  EscritorioScreen(this._pageController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Colors.blue),
        title: Text('Escritório', style: GoogleFonts.poppins(
            textStyle:
            TextStyle(fontSize: 20.0, color: Colors.blue, fontWeight: FontWeight.w500)),),
        centerTitle: true,
      ),
      body: Container(),
      drawer: CustomDrawer(_pageController),
    );
  }
}
