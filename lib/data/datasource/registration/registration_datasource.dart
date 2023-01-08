library standalone_pkg;

abstract class RegistrationDataSource {
  Future<Object> register(
    String email,
    String password,
  );
}
