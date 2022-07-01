import 'package:flutter/material.dart';

class AsistenciaWidget extends StatefulWidget {
  const AsistenciaWidget({Key? key}) : super(key: key);

  @override
  _AsistenciaWidgetState createState() => _AsistenciaWidgetState();
}

class _AsistenciaWidgetState extends State<AsistenciaWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Resumen Asistencia'),
          centerTitle: true,
        ),
      );
}
