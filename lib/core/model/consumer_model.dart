import 'dart:convert';
import 'package:fromfarmer/core/model/user_model.dart';

class ConsumerModel extends UserModel {
  String city;
  String district;
  String neigborhood;
  String street;
  String apartment;

  ConsumerModel({
    required int id,
    bool isFarmer = false,
    required String email,
    required String phoneNumber,
    required String password,
    required String firstName,
    required String lastName,
    required String dateOfBirth,
    required int gender,
    required this.city,
    required this.district,
    required this.neigborhood,
    required this.street,
    required this.apartment,
  }) : super(
          id: id,
          isFarmer: isFarmer,
          email: email,
          phoneNumber: phoneNumber,
          password: password,
          firstName: firstName,
          lastName: lastName,
          dateOfBirth: dateOfBirth,
          gender: gender,
        );

  // ConsumerModel copyWith({
  //   String? city,
  //   String? district,
  //   String? neigborhood,
  //   String? street,
  //   String? apartment,
  // }) {
  //   return ConsumerModel(
  //     city: city ?? this.city,
  //     district: district ?? this.district,
  //     neigborhood: neigborhood ?? this.neigborhood,
  //     street: street ?? this.street,
  //     apartment: apartment ?? this.apartment,
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
      'gender': gender,
      'city': city,
      'district': district,
      'neigborhood': neigborhood,
      'street': street,
      'apartment': apartment,
    };
  }

  factory ConsumerModel.fromMap(Map<String, dynamic> map) {
    return ConsumerModel(
      id: map['id'],
      isFarmer: map['isFarmer'],
      email: map['email'],
      phoneNumber: map['phoneNumber'],
      password: map['password'],
      firstName: map['firstname'],
      lastName: map['lastname'],
      dateOfBirth: map['dateOfBirth'],
      gender: map['gender'],
      city: map['city'],
      district: map['district'],
      neigborhood: map['neigborhood'],
      street: map['street'],
      apartment: map['apartment'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ConsumerModel.fromJson(String source) =>
      ConsumerModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ConsumerModel(id: $id, isFarmer: $isFarmer, email: $email, '
        'phoneNumber: $phoneNumber, password: $password, firstName: '
        '$firstName, lastName: $lastName, dateOfBirth: $dateOfBirth, '
        'gender: $gender, city: $city, district: $district, neigborhood: '
        '$neigborhood, street: $street, apartment: $apartment)';
  }

  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) return true;

  //   return other is ConsumerModel &&
  //       other.city == city &&
  //       other.district == district &&
  //       other.neigborhood == neigborhood &&
  //       other.street == street &&
  //       other.apartment == apartment;
  // }

  // @override
  // int get hashCode {
  //   return city.hashCode ^
  //       district.hashCode ^
  //       neigborhood.hashCode ^
  //       street.hashCode ^
  //       apartment.hashCode;
  // }
}
