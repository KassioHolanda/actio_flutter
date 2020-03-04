import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContatosTile extends StatefulWidget {
  @override
  _ContatosTileState createState() => _ContatosTileState();
}

class _ContatosTileState extends State<ContatosTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          padding: EdgeInsets.only(left: 14.0, right: 16.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQjsoIXf1omE-IoNUa88r3GKS4TY1T0o35FSo9QOsXMyqPLusmS'),
                    ),
                  ),
                  SizedBox(
                    width: 18.0,
                  ),
                  Text(
                    'Kássio Lucas de Holanda ',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://abrilexame.files.wordpress.com/2018/10/8dicas1.jpg?quality=70&strip=info&w=382&h=382'),
                    ),
                  ),
                  SizedBox(
                    width: 18.0,
                  ),
                  Text(
                    'Joaquim jose da Silva',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              )
            ],
          )),
    );
  }
}
