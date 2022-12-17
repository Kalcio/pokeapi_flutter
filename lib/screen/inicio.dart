// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/material.dart';
// import 'package:pokeapi_flutter/screen/home.dart';
// import 'package:pokeapi_flutter/screen/login.dart';
// import 'package:pokeapi_flutter/services/firebase_services.dart';
// import 'package:pokeapi_flutter/screen/widget/menu.dart';

// class inicioScreen extends StatefulWidget {
//   const inicioScreen({super.key});

//   @override
//   State<inicioScreen> createState() => _inicioScreenState();
// }

// // ignore: camel_case_types
// class _inicioScreenState extends State<inicioScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         // Botón de Logout
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Mostrar el nombre en pantalla
//             // Text("${FirebaseAuth.instance.currentUser!.displayName}"),
//             ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color.fromARGB(255, 190, 50, 7)),
//                 onPressed: () async {
//                   // Confirmación de Logout
//                   await FirebaseService().signOut();
//                   if (!mounted) return;
//                   Navigator.push(
//                       context,
//                       // Ruta Login
//                       MaterialPageRoute(
//                           builder: (context) => const Homescreen()));
//                 },
//                 child: const Text("Logout")),
//           ],
//         ),
//       ),
//     );
//   }
// }
