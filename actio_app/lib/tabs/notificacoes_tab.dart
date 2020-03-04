import 'package:actio_app/tiles/notification_tile.dart';
import 'package:actio_app/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificacoesTab extends StatelessWidget {
  final PageController _pageController;

  NotificacoesTab(this._pageController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notificações',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.w500)),
        ),
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
