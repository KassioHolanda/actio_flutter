import 'package:actio_app/screens/configuracoes_screen.dart';
import 'package:actio_app/screens/contatos_screen.dart';
import 'package:actio_app/screens/escritorio_screen.dart';
import 'package:actio_app/screens/financeiro_screen.dart';
import 'package:actio_app/screens/tarefas_screen.dart';
import 'package:actio_app/tabs/actions_tab.dart';
import 'package:actio_app/tabs/localizacao_tab.dart';
import 'package:actio_app/tabs/mensagens_tab.dart';
import 'package:actio_app/screens/processos_screen.dart';
import 'package:actio_app/tabs/notificacoes_tab.dart';
import 'package:actio_app/screens/perfil_screen.dart';
import 'package:actio_app/tabs/pesquisar_tab.dart';
import 'package:actio_app/widgets/custom_drawer.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController = PageController();
  PageController _pageControllerBottomNavigator;
  int _page;

  @override
  void initState() {
    super.initState();
    _pageControllerBottomNavigator = PageController();
    _page = 0;
  }

//
  @override
  void disponse() {
    _pageControllerBottomNavigator.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          drawer: CustomDrawer(this._pageController),
          body: PageView(
//            child: PageView(
            controller: _pageControllerBottomNavigator,
            onPageChanged: (p) {
              setState(() {
                _page = p;
              });
            },
            children: <Widget>[
              ActionsTab(this._pageController),
              MensagensTab(this._pageController),
              NotificacoesTab(this._pageController),
//              PesquisarTab(this._pageController),
//              LocalizacaoTab(this._pageController),
//                ProcessosScreen(),
            ],
//            ),
          ),
//          backgroundColor: Colors.blue,
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.white,
              primaryColor: Colors.red,
              textTheme: Theme.of(context)
                  .textTheme
                  .copyWith(caption: TextStyle(color: Colors.redAccent)),
            ),
            child: BottomNavigationBar(
              currentIndex: _page,
              onTap: (p) {
//                _pageControllerBottomNavigator.animateTo(p.toDouble(),
//                    duration: Duration(microseconds: 500), curve: Curves.ease);
                _pageControllerBottomNavigator.jumpToPage(p);
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.art_track,
                      color: Colors.deepPurple,
                    ),
                    title: Text(
                      'Actions',
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.w900),
                    )),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.send,
                      size: 16.0,
                      color: Colors.deepPurple,
                    ),
                    title: Text('Mensagens',
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.w900))),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.notifications_off,
                      size: 16.0,
                      color: Colors.deepPurple,
                    ),
                    title: Text('Notificações',
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.w900))),
//                BottomNavigationBarItem(
//                    icon: Icon(
//                      Icons.search,
//                      color: Colors.white,
//                    ),
//                    title:
//                        Text('Pesquisar', style: TextStyle(color: Colors.white))),
//                BottomNavigationBarItem(
//                    icon: Icon(
//                      Icons.map,
//                      color: Colors.white,
//                    ),
//                    title: Text('Localização',
//                        style: TextStyle(color: Colors.white))),
              ],
            ),
          ),
        ),
        ContatoScreen(this._pageController),
        EscritorioScreen(this._pageController),
        ProcessosScreen(this._pageController),
        FinanceiroScreen(this._pageController),
        TarefasScreen(this._pageController),
        ConfiguracoesScreen(_pageController),
      ],
    );
  }
}
