import 'package:actio_app/screens/detalhe_escritorio.dart';
import 'package:actio_app/widgets/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EscritorioTile extends StatelessWidget {
  final DocumentSnapshot escritorio;

  EscritorioTile(this.escritorio);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 10,
        child: Column(
          children: <Widget>[
            Image.network(
              escritorio['image'],
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        escritorio['nome'],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSans',
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('0'),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FutureBuilder<DocumentSnapshot>(
                    future: Firestore.instance
                        .collection('endereco')
                        .document(escritorio['endereco'])
                        .get(),
                    builder: (context, snap) {
                      if (snap.hasData) {
                        return Text(
                          snap.data['rua'],
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'OpenSans',
                          ),
                        );
                      } else {
                        return Container();
                      }
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  _buildImageMembros(),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetalharEscritorioScreen(escritorio)));
      },
    );
  }

  Widget _buildImageMembros() {
    return Row(
      children: escritorio['membros'].map<Widget>((d) {
        return FutureBuilder<DocumentSnapshot>(
          future: Firestore.instance.collection('advogado').document(d).get(),
          builder: (c, snap) {
            if (snap.hasData) {
              return Row(
                children: <Widget>[
                  SizedBox(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(snap.data['image']),
                    ),
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(
                    width: 4,
                  )
                ],
              );
            } else {
              return Container();
            }
          },
        );
      }).toList(),
    );
  }
}
