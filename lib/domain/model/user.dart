library standalone_pkg;

class User {
  final String uid;
  final String? firstname;
  final String? lastname;
  User(
    this.uid,
    this.firstname,
    this.lastname,
  );

  User copyWith({
    String? firstname,
    String? lastname,
  }) {
    return User(
      uid,
      firstname ?? this.firstname,
      lastname ?? this.lastname,
    );
  }

  @override
  String toString() {
    return 'User: uid: $uid, firstname: $firstname, lastname: $lastname';
  }
}
