import 'package:actio_app/tiles/notification_tile.dart';
import 'package:actio_app/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class NotificacoesTab extends StatelessWidget {
  final PageController _pageController;

  NotificacoesTab(this._pageController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notificações'),
        centerTitle: true,
      ),
      drawer: CustomDrawer(this._pageController),
      body: ListView(
        children: <Widget>[
          ItemNotificacaoTile(),
        ],
      ),
    );
  }
}
