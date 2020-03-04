import 'package:cloud_firestore/cloud_firestore.dart';

class Endereco {
  String id;
  String bairro;
  int lat;
  int long;
  int numero;
  String referencia;
  String rua;

  Endereco();

  Endereco.fromDocument(DocumentSnapshot doc) {
    id = doc.documentID;
    bairro = doc['bairro'];
    lat = doc['lat'];
    long = doc['long'];
    numero = doc['numero'];
    referencia = doc['referencia'];
    rua = doc['rua'];
  }

  Map<String, dynamic> toMap() {
    return {
      'bairro': bairro,
      'lat': lat,
      'long': long,
      'numero': numero,
      'referencia': referencia,
      'rua': rua,
    };
  }
}
