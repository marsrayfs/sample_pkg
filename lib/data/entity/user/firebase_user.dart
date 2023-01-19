library standalone_pkg;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:standalone_pkg/domain/model/user.dart';

class FirebaseUser {
  final String uid;
  final String? nickname;
  final String? firstname;
  final String? lastname;
  final String? firstnameKana;
  final String? lastnameKana;
  final String? photo;
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

  const FirebaseUser({
    required this.uid,
    this.nickname,
    this.firstname,
    this.lastname,
    this.firstnameKana,
    this.lastnameKana,
    this.photo,
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

  factory FirebaseUser.fromUser(User user) {
    return FirebaseUser(
      uid: user.uid,
      nickname: user.nickname,
      firstname: user.firstname,
      lastname: user.lastname,
      firstnameKana: user.firstnameKana,
      lastnameKana: user.lastnameKana,
      photo: user.photo,
      mail: user.mail,
      addressCity: user.addressCity,
      addressNumber: user.addressNumber,
      addressPrefecture: user.addressPrefecture,
      phoneNumber: user.phoneNumber,
      sex: user.sex,
      birthDay: user.birthDay,
      birthMonth: user.birthMonth,
      birthYear: user.birthYear,
      subscription: user.subscription,
      withdraw: user.withdraw,
    );
  }

  factory FirebaseUser.fromData(
    Map<String, dynamic> data,
  ) {
    return FirebaseUser(
      uid: data['uid'],
      nickname: data['nickname'],
      firstname: data['firstname'],
      lastname: data['lastname'],
      firstnameKana: data['firstnameKana'],
      lastnameKana: data['lastnameKana'],
      photo: data['photo'],
      mail: data['mail'],
      addressCity: data['addressCity'],
      addressNumber: data['addressNumber'],
      addressPrefecture: data['addressPrefecture'],
      phoneNumber: data['phoneNumber'],
      sex: data['sex'],
      birthDay: data['birthDay'],
      birthMonth: data['birthMonth'],
      birthYear: data['birthYear'],
      subscription: data['subscription'],
      withdraw: data['withdraw'],
    );
  }

  Map<String, dynamic> getMap() {
    return {
      'uid': uid,
      'nickname': nickname,
      'firstname': firstname,
      'lastname': lastname,
      'firstnameKana': firstnameKana,
      'lastnameKana': lastnameKana,
      'photo': photo,
      'mail': mail,
      'addressCity': addressCity,
      'addressNumber': addressNumber,
      'addressPrefecture': addressPrefecture,
      'phoneNumber': phoneNumber,
      'sex': sex,
      'birthDay': birthDay,
      'birthMonth': birthMonth,
      'birthYear': birthYear,
      'subscription': subscription,
      'withdraw': withdraw,
    };
  }

  @override
  String toString() {
    return 'FirebaseUser';
  }
}
