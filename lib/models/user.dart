import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String id;
  final String username;
  final String email;
  final String photoUrl;
  final String displayName;
  final String bio;
  final bool verified;

  User ({
    required this.id,
    required this.username,
    required this.email,
    required this.photoUrl,
    required this.displayName,
    required this.bio,
    required this.verified
  });

  factory User.fromDocument(DocumentSnapshot doc) {
    return User(id: doc['id'], 
      username: doc['username'], 
      email: doc['email'], 
      photoUrl: doc['photoUrl'], 
      displayName: doc['displayName'], 
      bio: doc['bio'],
      verified: doc['verified']
    );
  }
}