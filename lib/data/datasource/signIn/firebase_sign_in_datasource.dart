library standalone_pkg;

import 'package:firebase_auth/firebase_auth.dart';

import '../../../util/result.dart';
import '../../entity/user/firebase_user.dart';
import 'sign_in_datasource.dart';

class FirebaseSignInDataSource implements SignInDataSource {
  @override
  Future<Result> signIn(
      {required String email, required String password}) async {
    try {
      final userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return Success(
          data: FirebaseUser(uid: userCredential.user!.uid).toUser());
    } on FirebaseException catch (e) {
      throw Failure(e.message);
    } catch (e) {
      throw Failure(e);
    }
  }
}
