import 'package:actio_app/tiles/action_tile.dart';
import 'package:flutter/material.dart';

class ActionsTab extends StatelessWidget {
  final PageController _pageController;

  ActionsTab(this._pageController);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: Colors.transparent,
              iconTheme: new IconThemeData(color: Colors.black),
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
//                title: const Text(
//                  'Actions', style: TextStyle(color: Colors.white),
//                ),
//                centerTitle: true,
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
    );
  }
}
