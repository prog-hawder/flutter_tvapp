import 'package:flutter/material.dart';
import 'package:flutter_tvapp/Pages/Home/home_screen.dart';
import 'package:flutter_tvapp/Pages/SingIn/cadastro_screen.dart';

import '../../Components/FieldText.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Color _color = Colors.transparent;
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
                        padding: const EdgeInsets.all(38.0),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                          ),
                        ),
                      ),
                      FieldText(text: "Usuário"),
                      FieldText(text: "Senha"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('ou'),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CadastroScreen()));
                              },
                              child: Text(
                                'cadastre-se',
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
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          backgroundColor: Color(0xFF7D4DF1),
          child:  Focus(
        onFocusChange: (focused) {
          setState(() {
            _color = focused ? Colors.black : Colors.transparent;
          });
        },
            child: Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: _color,
                        spreadRadius: 10,
                        blurRadius: 2,
                      )
                    ]),
                child: Icon(Icons.arrow_forward_ios_rounded)),
          ),
        ),
    );
  }
}
