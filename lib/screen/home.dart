import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:pokeapi_flutter/screen/login.dart';
import 'package:pokeapi_flutter/services/firebase_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        // Botón de Logout
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
