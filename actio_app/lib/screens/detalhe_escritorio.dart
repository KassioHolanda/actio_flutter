import 'package:actio_app/widgets/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetalharEscritorioScreen extends StatefulWidget {
  final DocumentSnapshot escritorio;

  DetalharEscritorioScreen(this.escritorio);

  @override
  _DetalharEscritorioScreenState createState() =>
      _DetalharEscritorioScreenState(escritorio);
}

class _DetalharEscritorioScreenState extends State<DetalharEscritorioScreen> {
  TabController tabController;
  final _nomeController = TextEditingController();
  final _escritorioController = TextEditingController();

  _DetalharEscritorioScreenState(DocumentSnapshot escritorio);

  @override
  void initState() {
    super.initState();
    _nomeController.text = widget.escritorio['nome'];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
//                pinned: true,
                bottom: TabBar(
                  indicatorColor: Colors.white,
                  tabs: <Widget>[
                    Tab(
                      child: Text(
                        'Dados Escritório',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Membros',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                expandedHeight: 260,
                backgroundColor: Colors.blue,
                floating: true,
//            snap: true,
//            elevation: 0.0,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Image.network(
                    widget.escritorio['image'],
                    fit: BoxFit.cover,
                  ),
                ),
                centerTitle: true,
                title: Text(
                  widget.escritorio['nome'],
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SliverFillRemaining(
                child: Scaffold(
                  body: TabBarView(
                    children: <Widget>[
                      _buildDados(),
                      _buildMembros(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMembros() {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(14),
        child: Container(
          child: Column(
            children: <Widget>[],
          ),
        ),
      ),
    );
  }

  Widget _buildDados() {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(14),
        child: Column(
          children: <Widget>[
            TextField(
              enabled: false,
              controller: _nomeController,
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Nome'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Endereço'),
            ),
          ],
        ),
      ),
    );
  }
}
