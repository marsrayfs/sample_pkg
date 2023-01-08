library standalone_pkg;

import '../../../domain/model/user.dart';

class FirebaseUser {
  final String uid;
  FirebaseUser({required this.uid});

  User toUser() {
    return User(uid);
  }
}
