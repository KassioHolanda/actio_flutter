import 'package:actio_app/screens/perfil_screen.dart';
import 'package:actio_app/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

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
        elevation: 0.0,
        title: Text('Configurações'),
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
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w500),
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
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w500),
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
                          style: TextStyle(
                              fontSize: 16.0),
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
