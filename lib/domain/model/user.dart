library standalone_pkg;

class User {
  final String uid;
  final String? nickname;
  final String? firstname;
  final String? lastname;
  final String? firstnameKana;
  final String? lastnameKana;
  final String? mail;
  final String? addressCity;
  final String? addressNumber;
  final String? addressPrefecture;
  final String? phoneNumber;
  final String? sex;
  final int? birthDay;
  final int? birthMonth;
  final int? birthYear;
  final bool? subscription;
  final bool? withdraw;

  User({
    required this.uid,
    this.nickname,
    this.firstname,
    this.lastname,
    this.firstnameKana,
    this.lastnameKana,
    this.mail,
    this.addressCity,
    this.addressNumber,
    this.addressPrefecture,
    this.phoneNumber,
    this.sex,
    this.birthDay,
    this.birthMonth,
    this.birthYear,
    this.subscription,
    this.withdraw,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      uid: map['uid'],
      nickname: map['nickname'],
      firstname: map['firstname'],
      lastname: map['lastname'],
      firstnameKana: map['firstnameKana'],
      lastnameKana: map['lastnameKana'],
      mail: map['mail'],
      addressCity: map['addressCity'],
      addressNumber: map['addressNumber'],
      addressPrefecture: map['addressPrefecture'],
      phoneNumber: map['phoneNumber'],
      sex: map['sex'],
      birthDay: map['birthDay'],
      birthMonth: map['birthMonth'],
      birthYear: map['birthYear'],
      subscription: map['subscription'],
      withdraw: map['withdraw'],
    );
  }

  @override
  String toString() {
    return 'User';
  }
}
