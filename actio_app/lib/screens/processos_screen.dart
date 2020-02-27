import 'package:actio_app/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class ProcessosScreen extends StatelessWidget {
  final PageController _pageController;

  ProcessosScreen(this._pageController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(_pageController),
      appBar: AppBar(
          elevation: 0.0,
        title: Text('Processos'),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
