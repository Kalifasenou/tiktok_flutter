import 'package:flutter/material.dart';
import 'package:tiktok_flutter/constants.dart';
import 'package:tiktok_flutter/vues/pages/acceuill.dart';
import 'package:tiktok_flutter/vues/widgets/icon_customiser.dart';

class PageAcceuill extends StatefulWidget {
  PageAcceuill({super.key});

  @override
  State<PageAcceuill> createState() => _PageAcceuillState();
}

class _PageAcceuillState extends State<PageAcceuill> {
  int pageIdx = 0;
  @override
  Widget build(BuildContext context) {
    // Navbar de la page d'acceuill
    return Scaffold(
      //Indexation des iconnes en fonction de l'ordre dans le dossier
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            pageIdx = index;
          });
        },
        //fixation et indexation des boutons du navbarr
        type: BottomNavigationBarType.fixed,
        backgroundColor: backgroundColor,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        currentIndex: pageIdx,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 30),
            label: 'Recherche',
          ),
          BottomNavigationBarItem(
            icon: IconneSpecial(),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message, size: 30),
            label: 'Discussions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30),
            label: 'Profils',
          ),
        ],
      ),
      body: pages[pageIdx],
    );
  }
}
