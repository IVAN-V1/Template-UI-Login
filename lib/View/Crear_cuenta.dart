import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';
import '../main.dart';

class RegistroScreen extends StatefulWidget {
  @override
  _RegistroScreenState createState() => _RegistroScreenState();
}

class _RegistroScreenState extends State<RegistroScreen> {

  TextEditingController controler_nombre_user = TextEditingController();
  TextEditingController controler_correo = TextEditingController();
  TextEditingController controler_contrasena = TextEditingController();
  TextEditingController controler_confirmar_contra = TextEditingController();

  bool _obscureText3 = true;
  bool _obscureText2 = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(
          color: Colors.white, // Cambia el color del icono de regreso a blanco
        ),
      ),

      body: SingleChildScrollView(

        child: Column(

          children: [

            Container(
              color: Colors.blue,
              height: 200,
              child: Center(
                child: Text(
                  'Crear Cuenta',
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



                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '¿Ya tengo una cuenta?',
                        style: TextStyle(
                          fontFamily: 'sans-serif-light',
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginScreen()),
                          );
                        },
                        child: Text(
                          ' Inicia sesión aquí',
                          style: TextStyle(
                            fontFamily: 'sans-serif-light',
                            fontSize: 16,
                            color: Color(0xFF304FFE),
                          ),
                        ),
                      ),
                    ],
                  ),


                  SizedBox(height: 16),

                  Text(
                    'Nombre',
                    style: TextStyle(
                      fontFamily: 'sans-serif-light',
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),

                  TextFormField(
                    controller: controler_nombre_user,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontFamily: 'sans-serif-light',
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(color: Colors.blueAccent),
                      ),
                    ),
                  ),


                  SizedBox(height: 16),

                  Text(
                    'Correo electrónico',
                    style: TextStyle(
                      fontFamily: 'sans-serif-light',
                      fontSize: 14,
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
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
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
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),


                  TextFormField(
                    controller: controler_contrasena,
                    obscureText: _obscureText2, // Oculta o muestra el texto de la contraseña
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontFamily: 'sans-serif-light',
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(color: Colors.blueAccent),
                      ),
                      prefixIcon: Icon(Icons.lock), // Icono de candado
                      suffixIcon: IconButton(
                        // Botón para alternar la visibilidad de la contraseña
                        icon: Icon(
                          _obscureText2 ? Icons.visibility : Icons.visibility_off,
                          color: Colors.black.withOpacity(0.5),
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText2 = !_obscureText2; // Alternar el valor de _obscureText3
                          });
                        },
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(color: Colors.blueAccent),
                      ),
                    ),
                  ),


                  SizedBox(height: 16),


                  Text(
                    'Repetir contraseña',
                    style: TextStyle(
                      fontFamily: 'sans-serif-light',
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),

                  TextFormField(
                    controller: controler_confirmar_contra,
                    obscureText: _obscureText3, // Oculta o muestra el texto de la contraseña
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontFamily: 'sans-serif-light',
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(color: Colors.blueAccent),
                      ),
                      prefixIcon: Icon(Icons.lock), // Icono de candado
                      suffixIcon: IconButton(
                        // Botón para alternar la visibilidad de la contraseña
                        icon: Icon(
                          _obscureText3 ? Icons.visibility : Icons.visibility_off,
                          color: Colors.black.withOpacity(0.5),
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText3 = !_obscureText3; // Alternar el valor de _obscureText3
                          });
                        },
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide: BorderSide(color: Colors.blueAccent),
                      ),
                    ),
                  ),


                  SizedBox(height: 16),


                  ElevatedButton(
                    onPressed: () async {

                      String email = controler_correo.text;
                      String password = controler_contrasena.text;
                      String name = controler_nombre_user.text;
                      String password_repit = controler_confirmar_contra.text;

                      // Validar campos vacíos y correo con @
                      if (name.isEmpty) {

                        toastification.show(
                          type: ToastificationType.warning,
                          context: context, // optional if you use ToastificationWrapper
                          title:
                          Text('Por favor, ingrese su nombre.'),
                          autoCloseDuration: const Duration(seconds: 5),
                          style: ToastificationStyle.flat,
                          foregroundColor: Colors.black,

                        );



                        return;
                      }

                      if (email.isEmpty || !email.contains('@')) {


                        toastification.show(
                          type: ToastificationType.warning,
                          context: context, // optional if you use ToastificationWrapper
                          title:
                          Text('Por favor, ingrese un correo válido.'),
                          autoCloseDuration: const Duration(seconds: 5),
                          style: ToastificationStyle.flat,
                          foregroundColor: Colors.black,

                        );


                        return;
                      }

                      if (password.isEmpty) {


                        toastification.show(
                          type: ToastificationType.warning,
                          context: context, // optional if you use ToastificationWrapper
                          title:
                          Text('Por favor, ingrese una contraseña.'),
                          autoCloseDuration: const Duration(seconds: 5),
                          style: ToastificationStyle.flat,
                          foregroundColor: Colors.black,

                        );



                        return;
                      } else if (password_repit.isEmpty) {


                        toastification.show(
                          type: ToastificationType.warning,
                          context: context, // optional if you use ToastificationWrapper
                          title:
                          Text('Por favor, ingrese una contraseña.'),
                          autoCloseDuration: const Duration(seconds: 5),
                          style: ToastificationStyle.flat,
                          foregroundColor: Colors.black,

                        );



                        return;
                      } else if (password != password_repit) {


                        toastification.show(
                          type: ToastificationType.warning,
                          context: context, // optional if you use ToastificationWrapper
                          title:
                          Text('Las contraseñas no son iguales.'),
                          autoCloseDuration: const Duration(seconds: 5),
                          style: ToastificationStyle.flat,
                          foregroundColor: Colors.black,

                        );


                        return;
                      } else {



                      }
                    },
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        'Crear cuenta',
                        style: TextStyle(
                          fontFamily: 'sans-serif-light',
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
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

