import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_dart/src/auth/auth.dart';
import 'package:firebase_dart/storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tiktok_flutter/constants.dart';

class AuthentifControleur extends GetxController {
  //telechargement de l'image de profil
  Future<String> _chargerimage(FileImage image) async {
    Reference ref = firebaseStorage
        .ref()
        .child('photoProfils')
        .child(firebaseAuth.currentUser!.uid);

    UploadTask uploadTask = ref.putFile(Image);
    TaskSnapshot snap = await uploadTask;
  }

  //Enregistrement d'un utilisateur
  void utilisateur(
      String pseudo, String email, String password, FileImage image) async {
    try {
      if (pseudo.isNotEmpty &&
          email.isNotEmpty &&
          password.isNotEmpty &&
          image != null) {
        //sauvegarder les données de notre utilisateur
        UserCredential cred = await firebaseAuth.createUserWithEmailAndPassword(
            email: email, password: password);
        _chargerimage(image);
      }
    } catch (e) {
      Get.snackbar(
        'Erreur de creation de compte',
        e.toString(),
      );
    }
  }
}
