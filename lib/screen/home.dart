import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:pokeapi_flutter/screen/login.dart';

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
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                // Ruta Login
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          child: Text("Logout"),
        ),
      ),
    );
  }
}
