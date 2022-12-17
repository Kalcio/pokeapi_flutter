import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pokeapi_flutter/screen/favoritos.dart';
import 'package:pokeapi_flutter/screen/login.dart';
import 'package:pokeapi_flutter/screen/votos.dart';
import 'package:pokeapi_flutter/services/firebase_services.dart';
import 'package:pokeapi_flutter/utils/colors_utils.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: hexStringColor("EF5350")),
              accountName: Text(
                "${FirebaseAuth.instance.currentUser!.displayName}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "${FirebaseAuth.instance.currentUser!.email}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture:
                  Image.network(FirebaseAuth.instance.currentUser!.photoURL!),
            ),
            // ListTile(
            //   leading: const Icon(
            //     Icons.search,
            //   ),
            //   title: const Text('Consultar Pokedex'),
            //   onTap: () {
            //     selectedItem(context, 0);
            //     Navigator.pop(context);
            //   },
            // ),
            ListTile(
              leading: const Icon(
                Icons.logout,
              ),
              title: const Text('Logout'),
              onTap: () async {
                await FirebaseService().signOut();

                Navigator.push(
                    context,
                    // Ruta Login
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();
  switch (index) {
    case 0:
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const Favoritoscreen()));
      break;
    case 1:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const Votoscreen()));
      break;
  }
}
