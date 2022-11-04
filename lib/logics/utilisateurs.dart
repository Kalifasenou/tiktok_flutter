import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String nom;
  String profilePhoto;
  String email;
  String uid;

  User(
      {required this.nom,
      required this.email,
      required this.uid,
      required this.profilePhoto});

  Map<String, dynamic> toJson() => {
        "nom": nom,
        "profilePhoto": profilePhoto,
        "email": email,
        "uid": uid,
      };

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return User(
      email: snapshot['email'],
      profilePhoto: snapshot['profilePhoto'],
      uid: snapshot['uid'],
      nom: snapshot['nom'],
    );
  }
}
