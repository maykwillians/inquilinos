import 'package:flutter/material.dart';
import 'package:inquilinos/src/bloc/login_bloc.dart';
import 'package:inquilinos/src/shared/colors/my_colors.dart';
import 'package:inquilinos/src/shared/strings/my_strings.dart';
import 'package:inquilinos/src/shared/widgets/my_buttons.dart';
import 'package:inquilinos/src/shared/widgets/my_text_field.dart';

class Login extends StatelessWidget {

  MyTextField _myTextField = MyTextField();
  MyColors _myColors = MyColors();
  MyStrings _myStrings = MyStrings();
  MyButtons _myButtons = MyButtons();

  TextEditingController _inputLogin = TextEditingController();
  TextEditingController _inputSenha = TextEditingController();

  LoginBloc _loginBloc = LoginBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: _myColors.primary_color,
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Form(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  StreamBuilder(
                    stream: _loginBloc.output,
                    builder: (context, snapshot) {
                      if(snapshot.data == 1) {
                        return Text("LOGADO!!!");
                      } else if (snapshot.data == 2){
                        return Text("USUÁRIO OU SENHA INVÁLIDOS!!!");
                      } else {
                        return Text("");
                      }
                    },
                  ),
                  _myTextField.textFormFieldCommon("Login", _inputLogin),
                  _myTextField.textFormFieldCommon("Senha", _inputSenha),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                    child: _myButtons.raisedButtonCommon(_myStrings.entrar, acction: () => {_loginBloc.login(_inputLogin.text, _inputSenha.text)}),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}