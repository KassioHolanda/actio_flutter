import 'package:actio_app/screens/perfil_screen.dart';
import 'package:actio_app/tiles/drawer_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final PageController pageController;

  CustomDrawer(this.pageController);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: <Widget>[
          SizedBox(
            child: Image.network(
              'https://emotioncard.com.br/wp-content/uploads/2019/04/background-wallpaper-preto.jpg',
              fit: BoxFit.cover,
            ),
          ),
          ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 14.0, left: 10.0),
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                        width: 80.0,
                        height: 80.0,
                        child: GestureDetector(
                          onTap: () {
//                            Navigator.of(context).pop();
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => PerfilScreen(pageController),));
                          },
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://abrilexame.files.wordpress.com/2018/10/8dicas1.jpg?quality=70&strip=info&w=382&h=382'),
                          ),
                        )),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Nome usuário logado',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),

//                  ],
//                ),
//              ),

              DrawerTile(Icons.home, 'Início', pageController, 0),
              DrawerTile(Icons.contacts, 'Contatos', pageController, 1),
              DrawerTile(Icons.domain, 'Escritório', pageController, 2),
              DrawerTile(Icons.list, 'Processos', pageController, 3),
              DrawerTile(Icons.account_balance_wallet, 'Finançeiro',
                  pageController, 4),
              DrawerTile(
                  Icons.playlist_add_check, 'Tarefas', pageController, 5),
              Divider(
                color: Colors.grey,
              ),
              DrawerTile(Icons.settings, 'Configurações', pageController, 6),
              DrawerTile(Icons.exit_to_app, 'Sair', pageController, 7),
            ],
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            left: 0.0,
            child: SizedBox(
              height: 44.0,
              child: RaisedButton(
                color: Colors.deepPurple,
                onPressed: () {},
                child: Text(
                  'Entrar',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
