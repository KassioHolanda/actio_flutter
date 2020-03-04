import 'package:actio_app/tiles/texto_personalizado_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConversaTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
                padding: EdgeInsets.all(10.0),
                child: SizedBox(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://abrilexame.files.wordpress.com/2018/10/8dicas1.jpg?quality=70&strip=info&w=382&h=382'),
                  ),
                  height: 50.0,
                  width: 50.0,
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Nome contato',
                  style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold, color: Colors.black)),
                ),
                Text(
                  'Ultima mensagem',
                  style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12.0, color: Colors.grey[500])),
                ),
                Text(
                  'hora',
                  style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12.0, color: Colors.grey[500])),
                ),
              ],
            ),
          ],
        ),
        Divider(),
      ],
    );
  }
}
