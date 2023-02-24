import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_tvapp/Pages/Login/login_screen.dart';

import '../../Components/FieldText.dart';

class CadastroScreen extends StatelessWidget {
  const CadastroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 130,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(130, 0, 130, 0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                    color: Color(0xFF7D4DF1),
                    borderRadius: BorderRadius.all(Radius.circular(23)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          spreadRadius: 2,
                          blurRadius: 6,
                          offset: Offset(1, 1))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(
                          'Cadastre-se',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                          ),
                        ),
                      ),
                      FieldText(text: "Usuário"),
                      FieldText(text: "E-mail"),
                      FieldText(text: "Senha"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Já tem uma conta?'),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              },
                              child: Text(
                                'Faça login',
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              right: 350,
              top: 26,
              child: Image.asset(
                'assets/homer.png',
                height: MediaQuery.of(context).size.height * 0.4,
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
        },
        backgroundColor: Color(0xFF7D4DF1),
        child: Icon(Icons.save_rounded),
      ),
    );
  }
}
