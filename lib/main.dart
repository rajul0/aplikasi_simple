import 'dart:html';
import 'package:flutter/material.dart';
import 'package:aplikasi_reward/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Introduce",
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}