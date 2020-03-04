import 'package:actio_app/screens/configuracoes.dart';
import 'package:actio_app/screens/contatos.dart';
import 'package:actio_app/screens/escritorio.dart';
import 'package:actio_app/screens/tarefas.dart';
import 'package:actio_app/tabs/paginicial_tab.dart';
import 'package:actio_app/tabs/localizacao_tab.dart';
import 'package:actio_app/tabs/mensagens_tab.dart';
import 'package:actio_app/screens/processos.dart';
import 'package:actio_app/tabs/notificacoes_tab.dart';
import 'package:actio_app/screens/perfil.dart';
import 'package:actio_app/tabs/pesquisar_tab.dart';
import 'package:actio_app/widgets/bottom_navigation_bar_widget.dart';
import 'package:actio_app/widgets/custom_drawer.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:actio_app/screens/financas.dart';

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
          floatingActionButton: _page == 0
              ? FloatingActionButton(
                  backgroundColor: Colors.red,
                  child: Icon(Icons.add_a_photo),
                  onPressed: () {},
                )
              : null,
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
              PagInicialTab(this._pageControllerBottomNavigator),
              MensagensTab(this._pageControllerBottomNavigator),
              NotificacoesTab(this._pageControllerBottomNavigator),
              LocalizacaoTab(this._pageControllerBottomNavigator),
              LocalizacaoTab(this._pageControllerBottomNavigator),
            ],
//            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              unselectedWidgetColor: Colors.red,
            ),
            child: BottomNavyBar(
              selectedIndex: _page,
              showElevation: true,
              itemCornerRadius: 8,
              curve: Curves.easeInBack,
              onItemSelected: (index) => setState(() {
                _pageControllerBottomNavigator.jumpToPage(index);
              }),
              items: [
                BottomNavyBarItem(
                    icon: Icon(
                      Icons.insert_chart,
                    ),
                    title: Text(
                      'Pag. Inicial',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500)),
                    )),
                BottomNavyBarItem(
                    icon: Icon(
                      Icons.send,
                      size: 16.0,
                    ),
                    title: Text(
                      'Mensagens',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500)),
                    )),
                BottomNavyBarItem(
                    icon: Icon(
                      Icons.notifications_off,
                      size: 16.0,
                    ),
                    title: Text(
                      'Notificações',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500)),
                    )),
                BottomNavyBarItem(
                    icon: Icon(
                      Icons.search,
                    ),
                    title: Text('Pesquisar',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500)))),
                BottomNavyBarItem(
                    icon: Icon(
                      Icons.map,
                    ),
                    title: Text(
                      'Localização',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500)),
                    )),
              ],
            ),
          ),
        ),
        ContatosScreen(this._pageController),
        EscritorioScreen(this._pageController),
        ProcessosScreen(this._pageController),
        FinanceiroScreen(this._pageController),
        TarefasScreen(this._pageController),
        ConfiguracoesScreen(_pageController),
      ],
    );
  }
}
