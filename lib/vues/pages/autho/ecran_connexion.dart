import 'package:flutter/material.dart';
import 'package:tiktok_flutter/constants.dart';

//Creation de la page de connexion
class ConnexionPage extends StatelessWidget {
  const ConnexionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //le body pour contenir un enfant qui contient des enfants
      body: Container(
        alignment: Alignment.center,
        child: Column(
          //les enfants du child qui sont une colonne
          children: [
            //titre de la page
            Text(
              'Tiktok ODK',
              style: TextStyle(
                fontSize: 35,
                color: buttonColor,
                fontWeight: FontWeight.w900,
              ),
            ),
            const Text(
              'Connexion',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 25,),
            Container(
              child: ,
            ),
          ],
        ),
      ),
    );
  }
}
