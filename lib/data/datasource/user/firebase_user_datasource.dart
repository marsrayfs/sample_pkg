library standalone_pkg;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:standalone_pkg/data/datasource/user/user_datasource.dart';
import 'package:standalone_pkg/util/result.dart';
import 'package:standalone_pkg/domain/model/user.dart';

import '../../entity/user/firebase_user.dart';

class FirebaseUserDatasource extends UserDataSource {
  @override
  Future<Result> getUser(String uid) async {
    DocumentReference documentReference =
        FirebaseFirestore.instance.collection('users').doc(uid);
    var snapshot = documentReference.get();
    return Failure("");
  }

  @override
  Future<Result> saveUser(User user) async {
    try {
      var firebaseUser = FirebaseUser.userToFirebaseUser(user);
      DocumentReference documentReference =
          FirebaseFirestore.instance.collection('users').doc(user.uid);
      documentReference.set(firebaseUser.map()).then((value) {
        return Success(data: value);
      }).catchError((e) {
        return Failure(e);
      });
    } catch (e) {
      return Failure(e);
    }
    return Failure("");
  }
}
