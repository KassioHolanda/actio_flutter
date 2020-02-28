import 'package:actio_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
        const EdgeInsets.only(top: 100, left: 40, right: 40, bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Olá,\n",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Colors.blue,
                              fontSize: 25,
                              fontWeight: FontWeight.w600))),
                  TextSpan(
                      text:
                      "Posso ajudar em alguma coisa? Deseja criar uma conta?,\n",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(color: Colors.blue))),
                ]),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextFormField(
                  autocorrect: true,
                  keyboardType: TextInputType.emailAddress,
                  textCapitalization: TextCapitalization.sentences,
                  style: TextStyle(fontSize: 16.0),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all((Radius.circular(10.0)))),
                      hintText: 'E-mail'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  obscureText: true,
                  style: TextStyle(fontSize: 16.0),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.all((Radius.circular(10.0)))), hintText
                      : 'Senha'),
                ),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  color: Colors.blue,
                  child: Text("Acessar conta",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(color: Colors.white),
                      )),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Pular.",
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(color: Colors.blue))),
                    ]),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
