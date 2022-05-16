// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asistencia App',
      home: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: const Text(
              'Inicio',
              style: TextStyle(color: Color(0xFF000000)),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Center(
          child: Container(
            child: Text(
              '¡Hola!, Bienvenido',
              style: TextStyle(
                color: Color(0xFF000000),
              ),
            ),
          ),
        ),
        backgroundColor: Color(0xFFF1F1F1),
      ),
    );
  }
}
