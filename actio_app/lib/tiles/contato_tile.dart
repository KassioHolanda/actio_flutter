import 'package:flutter/material.dart';

class ContatosTile extends StatefulWidget {
  @override
  _ContatosTileState createState() => _ContatosTileState();
}

class _ContatosTileState extends State<ContatosTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            SizedBox(
              height: 50.0,
              width: 50.0,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQjsoIXf1omE-IoNUa88r3GKS4TY1T0o35FSo9QOsXMyqPLusmS'),
              ),
            ),
            SizedBox(width: 18.0,),
            Text('Nome pessoa contato ', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),)
          ],
        ),
      ),
    );
  }
}
