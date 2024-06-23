import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';


class pantalla_reset_pass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResetPasswordScreen(),
    );
  }
}

class ResetPasswordScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();


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
                  'Restablecer \nContraseña',
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
                'Ingresar correo electronico',
                style: TextStyle(
                  fontFamily: 'sans-serif-light',
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontFamily: 'sans-serif-light',
                      ),
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF2962FF)),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),

                  SizedBox(height: 16),

                  ElevatedButton(
                    onPressed: () =>
                    (context),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
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
                        'Restablecer',
                        style: TextStyle(
                          fontFamily: 'sans-serif-light',
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),


                  SizedBox(height: 100),



                ],
              ),
            ),


          ],
        ),


      ),

    );
  }
}
