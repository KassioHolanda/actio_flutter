import 'package:actio_app/tiles/action_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PagInicialTab extends StatelessWidget {
  final PageController _pageController;

  PagInicialTab(this._pageController);

  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Colors.blue,
      child: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                floating: true,
                snap: true,
                backgroundColor: Colors.transparent,
                iconTheme: new IconThemeData(color: Colors.blue),
                elevation: 0.0,
                actions: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 10.0),
                    child: IconButton(
                      onPressed: () {},
                      padding: EdgeInsets.all(1.0),
                      icon: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://abrilexame.files.wordpress.com/2018/10/8dicas1.jpg?quality=70&strip=info&w=382&h=382'),
                      ),
                    ),
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    'Pag. Inicial',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue)),
                  ),
                  centerTitle: true,
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
//                      ActionsTile(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
