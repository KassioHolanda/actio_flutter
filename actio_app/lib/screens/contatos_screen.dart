import 'package:actio_app/tiles/contato_tile.dart';
import 'package:actio_app/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class ContatoScreen extends StatelessWidget {
  final PageController _pageController;

  ContatoScreen(this._pageController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Contatos'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
//        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                        height: 50.0,
                        width: 50.0,
                        child: IconButton(
                          icon: Icon(
                            Icons.group_add,
                            color: Colors.deepPurple,
                          ),
                        )
//                      CircleAvatar(
//                        backgroundImage: NetworkImage(
//                            'https://www.searchpng.com/wp-content/uploads/2019/03/AddButt-butt-200x200.png'),
//                      ),
                        ),
                    SizedBox(
                      width: 18.0,
                    ),
                    Text(
                      'Adicionar novo contato.',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            ContatosTile(),
            ContatosTile(),
            ContatosTile(),
            ContatosTile(),
            ContatosTile(),
            ContatosTile(),
            ContatosTile(),
            ContatosTile(),
            ContatosTile(),
            ContatosTile(),
            ContatosTile(),
            ContatosTile(),
            ContatosTile(),
            ContatosTile(),
            ContatosTile(),
            ContatosTile(),
            ContatosTile(),
            ContatosTile(),
            ContatosTile(),
            ContatosTile(),
          ],
        ),
      ),
      drawer: CustomDrawer(_pageController),
    );
  }
}
