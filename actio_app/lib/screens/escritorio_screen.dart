import 'package:actio_app/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class EscritorioScreen extends StatelessWidget {
  final PageController _pageController;

  EscritorioScreen(this._pageController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Escritório'),
        centerTitle: true,
      ),
      body: Container(),
      drawer: CustomDrawer(_pageController),
    );
  }
}
