import 'package:firebase_dart/firebase_dart.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_flutter/vues/pages/autho/ajout_video.dart';

import 'vues/pages/autho/video_defilement.dart';

//Routes de navigation
const pages = [
  VideoEcran(),
  Text('Page Recherche'),
  AjouterVideo(),
  Text('Page Discussions'),
  Text('Page Profils'),
];

//Couleurs de notre theme
const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

// //Données FIREBASE
// var firebaseAuth = FirebaseAuth.instance;
// var firebaseStorage = FirebaseStorage.instance;
// var firestore = FirebaseFirestore.instance;

//Contrôleur
// var authController = authController.instance;
