library standalone_pkg;

import 'dart:collection';

import '../../../domain/model/user.dart';

class FirebaseUser {
  final String uid;
  final String? firstname;
  final String? lastname;

  FirebaseUser({required this.uid, this.firstname, this.lastname});

  static FirebaseUser userToFirebaseUser(User user) {
    return FirebaseUser(
      uid: user.uid,
      firstname: user.firstname,
      lastname: user.lastname,
    );
  }

  Map<String, Object?> map() {
    Map<String, Object?> map = {
      "firstname": firstname,
      "lastname": lastname,
    };
    return map;
  }

  User toUser() {
    return User(
      uid,
      firstname,
      lastname,
    );
  }
}
