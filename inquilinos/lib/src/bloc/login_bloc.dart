import 'dart:async';

class LoginBloc {
  final StreamController _streamController = StreamController();
  Sink get input => _streamController.sink;
  Stream get output => _streamController.stream;
  int autenticado;

  void login(String login, String senha) {
    if (login == "admin" && senha == "123") {
      autenticado = 1;
    } else {
      autenticado = 2;
    }
    input.add(autenticado);
  }
}