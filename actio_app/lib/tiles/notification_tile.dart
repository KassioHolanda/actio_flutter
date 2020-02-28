import 'package:flutter/material.dart';

class ItemNotificacaoTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                left: 10.0, right: 10.0, top: 20.0, bottom: 20.0),
            child: SizedBox(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://pngimage.net/wp-content/uploads/2018/06/notifica%C3%A7%C3%A3o-png-5.png'),
              ),
              height: 40.0,
              width: 40.0,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Descrição notificação',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w900),
              ),
              Text(
                'tipo',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'datahora',
                style: TextStyle(fontSize: 14.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}
