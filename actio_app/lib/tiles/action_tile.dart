import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActionsTile extends StatefulWidget {
  @override
  _ActionsTileState createState() => _ActionsTileState();
}

class _ActionsTileState extends State<ActionsTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
//      padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, 6),
                  blurRadius: 4,
                  spreadRadius: 3)
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.network(
                'https://novovarejo.com.br/wp-content/uploads/2019/05/Screenshot_8.png'),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Titulo',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[800])),
              ),
            ),
            Padding(
              child: Text(
                'descrição postagem asldknasldnasdlkansfnlaskgjnaslfkafjaklfalsnfkasnflaskfnaçlsdgnasdlkgnsldgknksalkasflkamsfmaçsl fasodkfçalskdfç sklm asfmasdklçfmalçskd mçasklfm aslçkdfm asldkfmaçslk façsld askm çsdklfmaçkl s  açsdfklmd',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(fontSize: 14.0, color: Colors.grey)),
              ),
              padding: EdgeInsets.all(10.0),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: SizedBox(
                height: 20.0,
                width: 20.0,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://abrilexame.files.wordpress.com/2018/10/8dicas1.jpg?quality=70&strip=info&w=382&h=382'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
