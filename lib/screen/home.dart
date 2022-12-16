import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pokeapi_flutter/screen/login.dart';
import 'package:pokeapi_flutter/screen/widget/poke_card.dart';
import 'package:pokeapi_flutter/services/firebase_services.dart';
import 'package:pokeapi_flutter/utils/colors_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: hexStringColor("EF5350"),
      ),
      // Color de fondo
      backgroundColor: hexStringColor("EFF1F0"),
      body: Center(
        // Botón de Logout
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const PokeCard(
                id: "1",
                name: "charmander",
                ability: "hierro",
                sprites:
                    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png",
                types: "fuego"),
            // Mostrar el nombre en pantalla
            Text("${FirebaseAuth.instance.currentUser!.displayName}"),
            ElevatedButton(
              onPressed: () async {
                // Confirmación de Logout
                await FirebaseService().signOut();
                if (!mounted) return;
                Navigator.push(
                    context,
                    // Ruta Login
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
              // Estilo del botón
              style: ElevatedButton.styleFrom(
                  // Color de fondo
                  backgroundColor: hexStringColor("FECA1B"),
                  // Color del texto
                  foregroundColor: hexStringColor("325188")),
              // Texto del botón
              child: const Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
