import 'dart:convert';
import 'package:fromfarmer/core/model/user_model.dart';

class FarmerModel extends UserModel {
  String city;
  String district;
  String townOrVillage;
  String neigborhood;
  String street;
  String buildingNumber;

  FarmerModel({
    required int id,
    bool isFarmer = true,
    required String email,
    required String phoneNumber,
    required String password,
    required String firstName,
    required String lastName,
    required String dateOfBirth,
    required int gender,
    required this.city,
    required this.district,
    required this.townOrVillage,
    required this.neigborhood,
    required this.street,
    required this.buildingNumber,
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

  // FarmerModel copyWith({
  //   String? city,
  //   String? district,
  //   String? townOrVillage,
  //   String? neigborhood,
  //   String? street,
  //   String? buildingNumber,
  // }) {
  //   return FarmerModel(
  //     city: city ?? this.city,
  //     district: district ?? this.district,
  //     townOrVillage: townOrVillage ?? this.townOrVillage,
  //     neigborhood: neigborhood ?? this.neigborhood,
  //     street: street ?? this.street,
  //     buildingNumber: buildingNumber ?? this.buildingNumber,
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
      'townOrVillage': townOrVillage,
      'neigborhood': neigborhood,
      'street': street,
      'buildingNumber': buildingNumber,
    };
  }

  factory FarmerModel.fromMap(Map<String, dynamic> map) {
    return FarmerModel(
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
      townOrVillage: map['townOrVillage'],
      neigborhood: map['neigborhood'],
      street: map['street'],
      buildingNumber: map['buildingNumber'],
    );
  }

  String toJson() => json.encode(toMap());

  factory FarmerModel.fromJson(String source) =>
      FarmerModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FarmerModel(id: $id, isFarmer: $isFarmer, email: $email, '
        'phoneNumber: $phoneNumber, password: $password, firstName: '
        '$firstName, lastName: $lastName, dateOfBirth: $dateOfBirth, gender: '
        '$gender, city: $city, district: $district, townOrVillage: '
        '$townOrVillage, neigborhood: $neigborhood, street: $street, '
        'buildingNumber: $buildingNumber)';
  }

  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) return true;

  //   return other is FarmerModel &&
  //       other.city == city &&
  //       other.district == district &&
  //       other.townOrVillage == townOrVillage &&
  //       other.neigborhood == neigborhood &&
  //       other.street == street &&
  //       other.buildingNumber == buildingNumber;
  // }

  // @override
  // int get hashCode {
  //   return city.hashCode ^
  //       district.hashCode ^
  //       townOrVillage.hashCode ^
  //       neigborhood.hashCode ^
  //       street.hashCode ^
  //       buildingNumber.hashCode;
  // }
}
