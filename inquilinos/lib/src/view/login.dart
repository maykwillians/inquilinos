import 'package:flutter/material.dart';
import 'package:inquilinos/src/shared/colors/my_colors.dart';
import 'package:inquilinos/src/shared/strings/my_strings.dart';
import 'package:inquilinos/src/shared/styles/my_text_styles.dart';

class Login extends StatelessWidget {

  MyTextStyle _myTextStyle = MyTextStyle();
  MyColors _myColors = MyColors();
  MyStrings _myStrings = MyStrings();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amberAccent,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                    decoration: InputDecoration(
                      labelText:"Telefone do usuário",
                      labelStyle: TextStyle(color: Colors.black),
                    )
                ),
                Divider(),
                TextField(
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                    decoration: InputDecoration(
                      labelText:"Senha do usuário",
                      labelStyle: TextStyle(color: Colors.black),
                    )
                ),
                Divider(),
                ButtonTheme(
                  height: 60.0,
                  child: RaisedButton(
                    onPressed: () => {
                      print("pressionei o botão"),
                    },
                    shape: new RoundedRectangleBorder(borderRadius:
                    new BorderRadius.circular(30.0)),
                    child: Text(
                      "Enviar",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    color:Colors.red,
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}