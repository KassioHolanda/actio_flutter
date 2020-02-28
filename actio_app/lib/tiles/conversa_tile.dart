import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConversaTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 8.0),
                child: SizedBox(
                  child: CircleAvatar(
                    backgroundImage:
                    NetworkImage(
                        'https://abrilexame.files.wordpress.com/2018/10/8dicas1.jpg?quality=70&strip=info&w=382&h=382'),
                  ),
                  height: 50.0,
                  width: 50.0,
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Nome contato',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Ultima mensagem',
                  style: TextStyle(fontSize: 14.0, color: Colors.grey[500]),
                ),
                Text('hora',style: TextStyle(fontSize: 14.0, color: Colors.grey[500]),),
              ],
            ),
          ],
        ),
        Divider(),
      ],
    );
  }
}
