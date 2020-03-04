import 'package:actio_app/screens/perfil.dart';
import 'package:actio_app/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfiguracoesScreen extends StatefulWidget {
  final PageController _pageController;

  ConfiguracoesScreen(this._pageController);

  @override
  _ConfiguracoesScreenState createState() => _ConfiguracoesScreenState();
}

class _ConfiguracoesScreenState extends State<ConfiguracoesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(widget._pageController),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Colors.blue),
        title: Text('Configurações', style: GoogleFonts.poppins(
            textStyle:
            TextStyle(fontSize: 20.0, color: Colors.blue, fontWeight: FontWeight.w500)),),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
//                Navigator.of(context).push(MaterialPageRoute(
//                  builder: (context) => PerfilScreen(widget._pageController),
//                ));
              },
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Advocacia',
                          style: GoogleFonts.poppins(
                              textStyle:
                              TextStyle(fontSize: 14.0, color: Colors.black)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Divider(),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PerfilScreen(widget._pageController),
                ));
              },
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Perfil',
                          style: GoogleFonts.poppins(
                              textStyle:
                              TextStyle(fontSize: 14.0, color: Colors.black)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Divider(),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
//                Navigator.of(context).push(MaterialPageRoute(
//                  builder: (context) => PerfilScreen(widget._pageController),
//                ));
              },
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Configurações do App',
                          style: GoogleFonts.poppins(
                              textStyle:
                              TextStyle(fontSize: 14.0, color: Colors.black)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
