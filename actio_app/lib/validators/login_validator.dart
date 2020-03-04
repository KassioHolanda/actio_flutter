import 'dart:async';

class LoginValidators {
  final validadeEmail =
  StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (email.contains('@')) {
      sink.add(email);
    } else {
      sink.addError('Insira um email válido.');
    }
  });

  final validadeSenha = StreamTransformer<String, String>.fromHandlers(
      handleData: (senha, sink) {
        if (senha.length > 4) {
          sink.add(senha);
        } else {
          sink.addError('Insira no minimo 6 digitos.');
        }
      });
}
