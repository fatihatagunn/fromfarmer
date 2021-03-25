import 'dart:convert';

class UserModel {
  int id;
  bool isFarmer;
  String email;
  String phoneNumber;
  String password;
  String firstName;
  String lastName;
  String dateOfBirth;

  UserModel({
    required this.id,
    required this.isFarmer,
    required this.email,
    required this.phoneNumber,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.dateOfBirth,
  });

  // UserModel copyWith({
  //   int? id,
  //   int? isFarmer,
  //   String? email,
  //   String? phoneNumber,
  //   String? password,
  //   String? firstName,
  //   String? lastName,
  //   String? dateOfBirth,
  // }) {
  //   return UserModel(
  //     id: id ?? this.id,
  //     isFarmer: isFarmer ?? this.isFarmer,
  //     email: email ?? this.email,
  //     phoneNumber: phoneNumber ?? this.phoneNumber,
  //     password: password ?? this.password,
  //     firstName: firstName ?? this.firstName,
  //     lastName: lastName ?? this.lastName,
  //     dateOfBirth: dateOfBirth ?? this.dateOfBirth,
  //   );
  // }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'isFarmer': isFarmer,
      'email': email,
      'phoneNumber': phoneNumber,
      'password': password,
      'firstname': firstName,
      'lastname': lastName,
      'dateOfBirth': dateOfBirth,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      isFarmer: map['isFarmer'],
      email: map['email'],
      phoneNumber: map['phoneNumber'],
      password: map['password'],
      firstName: map['firstname'],
      lastName: map['lastname'],
      dateOfBirth: map['dateOfBirth'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(id: $id, isFarmer: $isFarmer, email: $email, '
        'phoneNumber: $phoneNumber, password: $password, firstName: '
        '$firstName, lastName: $lastName, dateOfBirth: $dateOfBirth)';
  }

  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) return true;

  //   return other is UserModel &&
  //       other.id == id &&
  //       other.isFarmer == isFarmer &&
  //       other.email == email &&
  //       other.phoneNumber == phoneNumber &&
  //       other.password == password &&
  //       other.firstName == firstName &&
  //       other.lastName == lastName &&
  //       other.dateOfBirth == dateOfBirth;
  // }

  // @override
  // int get hashCode {
  //   return id.hashCode ^
  //       isFarmer.hashCode ^
  //       email.hashCode ^
  //       phoneNumber.hashCode ^
  //       password.hashCode ^
  //       firstName.hashCode ^
  //       lastName.hashCode ^
  //       dateOfBirth.hashCode;
  // }
}
