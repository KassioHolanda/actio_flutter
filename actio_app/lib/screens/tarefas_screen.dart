import 'package:actio_app/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class TarefasScreen extends StatelessWidget {
  final PageController _pageController;

  TarefasScreen(this._pageController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(_pageController),
      appBar: AppBar(
        title: Text('Tarefas'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
