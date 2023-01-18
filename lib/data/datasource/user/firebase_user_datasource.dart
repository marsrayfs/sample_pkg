library standalone_pkg;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:standalone_pkg/data/entity/user/firebase_user.dart';

import '../../../domain/model/user.dart';
import '../../../util/result.dart';
import 'user_datasource.dart';

class FirebaseUserDatasource extends UserDataSource {
  _getFirebaseUser() {
    try {
      final user = auth.FirebaseAuth.instance.currentUser;
      return user ?? 'No user found';
    } catch (e) {
      throw Failure(e.toString());
    }
  }

  @override
  Future<Result> getUser() async {
    try {
      final uid = _getFirebaseUser().uid;
      final ref = FirebaseFirestore.instance.collection('users').doc(uid);
      final docSnap = await ref.get();
      if (docSnap.data() != null) {
        final FirebaseUser fbUser = FirebaseUser.fromData(docSnap.data()!);
        return Success(data: User.fromMap(fbUser.getMap()));
      }
      return Failure("Firebase User not found");
    } catch (e) {
      return Failure(e.toString());
    }
  }

  @override
  Future<Result> saveUser(User user) async {
    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .set(FirebaseUser.fromUser(user).getMap());
      return SuccessNoData();
    } catch (e) {
      throw Failure(e.toString());
    }
  }
}
