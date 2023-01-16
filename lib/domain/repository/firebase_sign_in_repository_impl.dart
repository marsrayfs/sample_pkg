library standalone_pkg;

import '../../data/datasource/signIn/firebase_sign_in_datasource.dart';
import '../../data/repository/sign_in_repository.dart';
import '../../util/result.dart';

class FirebaseSignInRepositoryImpl extends SignInRepository {
  FirebaseSignInRepositoryImpl() : super(FirebaseSignInDataSource());

  @override
  Future<Result> signIn({required String email, required String password}) {
    return dataSource.signIn(email: email, password: password);
  }
}
