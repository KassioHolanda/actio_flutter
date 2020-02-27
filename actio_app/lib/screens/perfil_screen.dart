import 'dart:io';

import 'package:actio_app/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PerfilScreen extends StatefulWidget {
  final PageController _pageController;

  PerfilScreen(this._pageController);

  @override
  _PerfilScreenState createState() => _PerfilScreenState();
}

class _PerfilScreenState extends State<PerfilScreen> {
  final _nameController = TextEditingController();

  @override
  void initState() {
    _nameController.text = 'Kássio Lucas de Holanda Leódido';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        centerTitle: true,
      ),
//      drawer: CustomDrawer(this._pageController),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () async {
                    final File imgFile =
                        await ImagePicker.pickImage(source: ImageSource.camera);
                    if (imgFile == null) return;

                  },
                  child: SizedBox(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://abrilexame.files.wordpress.com/2018/10/8dicas1.jpg?quality=70&strip=info&w=382&h=382'),
                    ),
                    height: 160.0,
                    width: 160.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  controller: _nameController,
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                  decoration: InputDecoration(
                    labelText: 'Telefone',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
