import 'package:actio_app/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class FinanceiroScreen extends StatelessWidget {
  final PageController _pageController;

  FinanceiroScreen(this._pageController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(_pageController),
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Financeiro'),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
