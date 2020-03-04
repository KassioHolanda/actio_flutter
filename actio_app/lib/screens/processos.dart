import 'package:actio_app/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProcessosScreen extends StatelessWidget {
  final PageController _pageController;

  ProcessosScreen(this._pageController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(_pageController),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
          elevation: 0.0,
        iconTheme: new IconThemeData(color: Colors.blue),
        title: Text('Processos', style: GoogleFonts.poppins(
            textStyle:
            TextStyle(fontSize: 20.0, color: Colors.blue, fontWeight: FontWeight.w500)),),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
