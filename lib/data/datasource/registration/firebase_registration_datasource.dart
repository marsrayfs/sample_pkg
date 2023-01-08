library standalone_pkg;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:standalone_pkg/data/datasource/registration/registration_datasource.dart';
import 'package:standalone_pkg/data/entity/user/firebase_user.dart';
import 'package:standalone_pkg/util/result.dart';

class FirebaseRegistrationDataSource implements RegistrationDataSource {
  @override
  Future<Result> register(String email, String password) async {
    try {
      var userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return Success(
          data: FirebaseUser(uid: userCredential.user!.uid).toUser());
    } on FirebaseException catch (e) {
      if (e.code == 'weak-password') {
        return Failure(e.message);
      } else if (e.code == 'email-already-in-use') {
        return Failure(e.message);
      }
    } catch (e) {
      return Failure(e);
    }
    return Failure("Something went wrong");
  }
}
