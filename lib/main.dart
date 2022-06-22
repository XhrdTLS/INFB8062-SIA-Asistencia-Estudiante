// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
//import 'package:qrscan/qrscan.dart' as scanner;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const InicioWidget());
}

class InicioWidget extends StatefulWidget {
  const InicioWidget({Key? key}) : super(key: key);

  @override
  _InicioWidgetState createState() => _InicioWidgetState();
}

class _InicioWidgetState extends State<InicioWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Asistencia UTEM',
        home: Scaffold(
          key: scaffoldKey,
          backgroundColor: Color(0xFFF1F1F1),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: Text(
                        'Bienvenid@',
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          color: Color(0xFF333333),
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 0.3,
                      color: Color(0xFF333333),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                      child: Text(
                        'ACCESO RÁPIDO',
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          color: Color(0xFF333333),
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: const [
                              Color.fromARGB(255, 6, 96, 122),
                              Color.fromARGB(255, 30, 142, 92),
                            ],
                            stops: const [0, 1],
                            begin: AlignmentDirectional(-1, 0),
                            end: AlignmentDirectional(1, 0),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              FaIcon(
                                FontAwesomeIcons.solidCalendarDays,
                                color: Color.fromARGB(255, 241, 241, 241),
                                size: 30,
                              ),
                              Text(
                                'Resumen Asistencia',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color.fromARGB(255, 241, 241, 241),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: const [
                              Color.fromARGB(255, 6, 96, 122),
                              Color.fromARGB(255, 30, 142, 92),
                            ],
                            stops: const [0, 1],
                            begin: AlignmentDirectional(-1, 0),
                            end: AlignmentDirectional(1, 0),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              FaIcon(
                                FontAwesomeIcons.solidCalendarXmark,
                                color: Color.fromARGB(255, 241, 241, 241),
                                size: 30,
                              ),
                              Text(
                                'Justificar Inasistencia',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color.fromARGB(255, 241, 241, 241),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 0.3,
                      color: Color(0xFF333333),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                      child: Text(
                        'CÓDIGOS',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Color(0xFF333333),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
