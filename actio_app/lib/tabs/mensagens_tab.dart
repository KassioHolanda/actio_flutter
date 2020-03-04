import 'package:actio_app/tiles/conversa_tile.dart';
import 'package:actio_app/tiles/texto_personalizado_tile.dart';
import 'package:actio_app/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MensagensTab extends StatelessWidget {
  final PageController _pageController;

  MensagensTab(this._pageController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _pageController.page == 1
          ? FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(Icons.add_comment),
        onPressed: () {},
      )
          : null,
      drawer: CustomDrawer(this._pageController),
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.blue),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.blue,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.archive,
              color: Colors.blue,
            ),
          ),
        ],
        title: TextoPersonalizado(
          cor: Colors.blue,
          tamanho: 20.0,
          text: 'Mensagens',
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          ConversaTile(),
        ],
      ),
    );
  }
}
