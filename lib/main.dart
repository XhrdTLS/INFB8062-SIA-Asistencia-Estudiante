import 'package:flutter/material.dart';
//import 'package:flutter_application_login_1/utils/constants.dart';
//import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qr/qr.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils/datos.dart';

//void main() => runApp(const MyApp());
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "",
      home: Scaffold(
        appBar: null,
        body: MyStatefulWidget(),
      ),
    );
  }
}

TextEditingController nameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

final qrKey = GlobalKey();

// crear pantalla de resumen asistencia
class ThirdRoute extends StatefulWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  _ThirdRoutetState createState() => _ThirdRoutetState();
}

class _ThirdRoutetState extends State<ThirdRoute> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: const Color(0xFF06607A),
        automaticallyImplyLeading: true,
        title: const Text(
          'Resumen Asistencia',
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: const Color(0xFFF1F1F1),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 36, 202, 174),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(30, 20, 0, 3),
                            child: Text(
                              '80%',
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                            child: Text(
                              'Aprobado',
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(40, 30, 20, 20),
                        child: Text(
                          'Porcentaje\nde Asistencia',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                child: Text(
                  'RESUMEN',
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 20),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 36, 202, 174),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                        child: Text(
                          'Clases Totales \n\nClases Asistidas\n\nClases Ausentadas\n\nClases Justificadas',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(120, 0, 0, 0),
                        child: Text(
                          '20\n\n15\n\n5\n\n1',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageDialog extends StatelessWidget {
  const ImageDialog({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: SizedBox(
      width: null,
      height: null,
      child: QrImage(
        data: passwordController.text,
        size: 300,
        backgroundColor: Colors.white,
        version: QrVersions.auto,
      ),
    ));
  }
}

// crear segunda pantalla
class SecondRoute extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  //const SecondRoute({Key? key}) : super(key: key);
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Asistencia UTEM',
        home: Scaffold(
          key: scaffoldKey,
          backgroundColor: const Color(0xFFF1F1F1),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                    child: Text(
                      'Asistencia Estudiante',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Color(0xFF333333),
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 0.3,
                    color: Color(0xFF333333),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                    child: Text(
                      'ACCESO RÁPIDO',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Color(0xFF333333),
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                // ignore: prefer_const_constructors
                                builder: (context) => ThirdRoute()),
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xFF06607A),
                                Color(0xFF1E8E5C),
                              ],
                              stops: [0, 1],
                              begin: AlignmentDirectional(-1, 0),
                              end: AlignmentDirectional(1, 0),
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20, 20, 20, 20),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                FaIcon(
                                  FontAwesomeIcons.solidCalendarDays,
                                  color: Color(0xFFF1F1F1),
                                  size: 30,
                                ),
                                Text(
                                  'Resumen Asistencia',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Color(0xFFF1F1F1),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFF06607A),
                            Color(0xFF1E8E5C),
                          ],
                          stops: [0, 1],
                          begin: AlignmentDirectional(-1, 0),
                          end: AlignmentDirectional(1, 0),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20, 20, 20, 20),
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
                  const Divider(
                    thickness: 0.3,
                    color: Color(0xFF333333),
                  ),
                  const Padding(
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
                  Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                      child: GestureDetector(
                        onTap: () async {
                          await showDialog(
                              context: context,
                              builder: (_) => const ImageDialog());
                        },
                        child: QrImage(
                          data: passwordController.text,
                          size: 100,
                          backgroundColor: Colors.white,
                          version: QrVersions.auto,
                        ),
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  //TextEditingController nameController = TextEditingController();
  //TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 150),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Asistencia UTEM',
                  style: TextStyle(
                      color: Color(0xFF333333),
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Entra con tu Pasaporte UTEM',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Correo UTEM',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Contraseña',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: const Text('Recuperar Contraseña.'),
                          content: const Text(
                              'Si es primera vez que usas la aplicación, la contraseña por defecto de tu cuenta es el número de tu RUT sin el dígito verificador y sin puntos. Si ya cambiaste tu contraseña y no tienes acceso a tu cuenta, ponte en contacto con los desarrolladores para recuperarla'),
                          actions: [
                            TextButton(
                                child: const Text('OK'),
                                onPressed: () => Navigator.pop(context))
                          ],
                        ));
                //forgot password screen
              },
              child: const Text(
                'Recuperar Contraseña',
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                    child: const Text('Entrar'),
                    onPressed: () {
                      print(nameController.text);
                      print(passwordController.text);
                      if (nameController.text == '' ||
                          passwordController.text == '') {
                        // campo de correo y contraseña vacíos, primera verificación
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  title:
                                      const Text('¡Error al iniciar sesión!'),
                                  content:
                                      const Text('Ingresa correo y contraseña'),
                                  actions: [
                                    TextButton(
                                        child: const Text('OK'),
                                        onPressed: () => Navigator.pop(context))
                                  ],
                                ));
                      } else {
                        if (!credenciales.containsValue(nameController.text)) {
                          // verificación de correo
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    title:
                                        const Text('¡Error al iniciar sesión!'),
                                    content: const Text('Usuario no existe'),
                                    actions: [
                                      TextButton(
                                          child: const Text('OK'),
                                          onPressed: () =>
                                              Navigator.pop(context))
                                    ],
                                  ));
                        } else {
                          var _user = nameController.text;
                          var _pass = passwordController.text;
                          print('map');
                          print(credenciales[passwordController.text]);
                          print(_pass);

                          if (credenciales[passwordController.text] ==
                              nameController.text) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SecondRoute()));
                          } else {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      title: const Text(
                                          '¡Error al iniciar sesión!'),
                                      content:
                                          const Text('Contraseña incorrecta'),
                                      actions: [
                                        TextButton(
                                            child: const Text('OK'),
                                            onPressed: () =>
                                                Navigator.pop(context))
                                      ],
                                    ));
                            print('error con pass/user');
                          }
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF06607A)))),
          ],
        ));
  }
}
