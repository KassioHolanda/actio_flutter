import 'package:actio_app/tiles/conversa_tile.dart';
import 'package:actio_app/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class MensagensTab extends StatelessWidget {
  final PageController _pageController;

  MensagensTab(this._pageController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(this._pageController),
      appBar: AppBar(
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.archive,
              color: Colors.white,
            ),
          ),
        ],
        title: Text('Mensagens'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          ConversasTile(),
          ConversasTile(),
          ConversasTile(),
          ConversasTile(),
          ConversasTile(),
          ConversasTile(),
          ConversasTile(),
          ConversasTile(),
          ConversasTile(),
          ConversasTile(),
          ConversasTile(),
        ],
      ),
    );
  }
}
