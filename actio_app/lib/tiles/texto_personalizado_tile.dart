import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextoPersonalizado extends StatelessWidget {
  final double tamanho;
  final Color cor;
  final String text;

  TextoPersonalizado(
      {@required this.tamanho, @required this.cor, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.poppins(
            textStyle: TextStyle(
                fontSize: tamanho, fontWeight: FontWeight.w500, color: cor)));
  }
}
