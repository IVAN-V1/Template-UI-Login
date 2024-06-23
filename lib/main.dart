import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

import 'View/Crear_cuenta.dart';
import 'View/Reset_Password.dart';



void main() async{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: LoginScreen(),
    );

  }

}

class LoginScreen extends StatelessWidget {
  TextEditingController controler_correo = TextEditingController();
  TextEditingController controler_contrasena = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
      ),

      body:  SingleChildScrollView(

        child: Column(

          children: [


            Container(
              color: Colors.blue,
              height: 200,
              child: Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  Text(
                    'Correo electrónico',
                    style: TextStyle(
                      fontFamily: 'sans-serif-light',
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),


                  TextFormField(
                    controller: controler_correo,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontFamily: 'sans-serif-light',
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(color: Colors.blueAccent),
                      ),
                    ),
                  ),


                  SizedBox(height: 16),


                  Text(
                    'Contraseña',
                    style: TextStyle(
                      fontFamily: 'sans-serif-light',
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),

                  TextFormField(
                    controller: controler_contrasena,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontFamily: 'sans-serif-light',
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(color: Colors.black),
                      ),


                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(color: Colors.blueAccent),
                      ),
                    ),
                  ),

                  SizedBox(height: 16),


                  Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ResetPasswordScreen()),
                        );
                      },


                      child: Text(
                        '¿Olvidaste tu contraseña?',
                        style: TextStyle(
                          fontFamily: 'bai_jamjuree_light',
                          fontSize: 14,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),


                  SizedBox(height: 16),

                  ElevatedButton(
                    onPressed: () async {

                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        'Iniciar sesión',
                        style: TextStyle(
                          fontFamily: 'sans-serif-light',
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),




                  SizedBox(height: 16),


                  Center(

                    child:   Text(
                      'O Inicia sesion con',
                      style: TextStyle(
                        fontFamily: 'bai_jamjuree_light',
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),


                  ),

                  SizedBox(height: 16),


                  FloatingActionButton.extended(
                    onPressed: () async {


                    },
                    icon: Image.asset(
                      'assets/imagenes/logo.png',
                      height: 24,
                      width: 24,
                    ),
                    label: Text(
                      'Iniciar sesión con Google',
                      style: TextStyle(
                        fontFamily: 'bai_jamjuree_light',
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    backgroundColor: Colors.white,
                  ),



                  SizedBox(height: 40),


                  Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '¿No tienes una cuenta? ',
                            style: TextStyle(color: Colors.black),
                          ),
                          WidgetSpan(
                            child: GestureDetector(
                              onTap: () {

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegistroScreen()), // Reemplaza TuNuevaPantalla() con la pantalla a la que deseas navegar
                                );

                              },
                              child: Text(
                                'Crea una aquí',
                                style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
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


          ],
        ),


      ),
    );
  }
}


OverlayEntry? _overlayEntry;

void showLoadingOverlay(BuildContext context) {
  _overlayEntry = OverlayEntry(
    builder: (context) => Stack(
      children: [
        Container(
          color: Colors.black54,
          child: Center(
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircularProgressIndicator(
                    color: Colors.blue,
                  ),
                  SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text: 'Cargando...',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );

  Overlay.of(context).insert(_overlayEntry!);
}

void hideLoadingOverlay() {
  _overlayEntry?.remove();
  _overlayEntry = null;
}
