import 'package:flutter/material.dart';
import 'package:flutter_tvapp/Pages/Login/login_screen.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "AppTV flutter",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black26,
        appBarTheme: AppBarTheme(
            color: Colors.transparent,
            elevation: 0,
            textTheme: TextTheme(
              headline2: TextStyle(color: Colors.white, fontSize: 20),
            )),
            visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    ));
