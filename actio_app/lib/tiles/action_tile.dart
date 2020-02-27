import 'package:flutter/material.dart';

class ActionsTile extends StatefulWidget {
  @override
  _ActionsTileState createState() => _ActionsTileState();
}

class _ActionsTileState extends State<ActionsTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 10.0, top: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(
              'https://lh3.googleusercontent.com/proxy/XbU2a_MWli5Fik3q0MSv7UW7bs8glG3KSx7Ru7PhBeLFYMO0LIE2lJGbiEbt1csLG5P0iTQAEN2J2ZfvZ6ISaLF383E-0ynA22o6GE_Ob6HJ7w918DYXBcRPuoe7ejGwF5lIr2MgGv4MCIPFp-CbP1nHmTw'),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Titulo',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w800),
            ),
          ),
          Padding(
            child: Text(
              'descrição postagem asldknasldnasdlkansfnlaskgjnaslfkafjaklfalsnfkasnflaskfnaçlsdgnasdlkgnsldgknksalkasflkamsfmaçsl fasodkfçalskdfç sklm asfmasdklçfmalçskd mçasklfm aslçkdfm asldkfmaçslk façsld askm çsdklfmaçkl s  açsdfklmd',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.grey),
            ),
            padding: EdgeInsets.all(10.0),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://abrilexame.files.wordpress.com/2018/10/8dicas1.jpg?quality=70&strip=info&w=382&h=382'),
            ),
          )
        ],
      ),
    );
  }
}
