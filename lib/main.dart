//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:smat_traffic3/intro_page.dart';
import 'package:smat_traffic3/home_screen.dart';
import 'package:smat_traffic3/register_screen.dart';
import 'package:smat_traffic3/splash_screen.dart';
import 'constants.dart';
import 'package:smat_traffic3/SplashPage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'samrt_traffic',
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
    /*final _init = Firebase.initializeApp();*/
    home: SplashScreen(),
    routes: {
      'login': (context) => Loginscreen(),
      'signup': (context) => register_screen(),
    },
    /*theme: ThemeData(
          primaryColor: Colors.amber, accentColor: Colors.yellowAccent),
      debugShowCheckedModeBanner: False,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Text('Welcome To Our Traffic System '),
        ),
        appBar: AppBar(
          title: const Text('Smart Traffic System'),
        ),
      ))*/
  ));
}
