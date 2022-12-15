import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pokeapi_flutter/screen/home.dart';
import 'package:pokeapi_flutter/utils/colors_utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                //Colores de la pantalla
                colors: [
              hexStringColor("0E8A57"),
              hexStringColor("E5EBED"),
              hexStringColor("FFFFFF")
            ],
                // Dirección del gradiente
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Center(
            child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 40),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.black26;
              }
              return Colors.white;
            })),
            // Botón de Login
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Configuración de la imagen de Google
                  Image.asset(
                    "assets/images/google.png",
                    // Tamaño de la Imagen
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  // Texto de Google
                  const Text(
                    "Ingresar con Google",
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}
