import 'dart:convert';

class ProductModel {
  int id;
  String type;
  String subtype;
  String title;
  String description;
  int farmerId;
  List<String> images;
  double price;
  double quantity;

  ProductModel({
    required this.id,
    required this.type,
    required this.subtype,
    required this.title,
    required this.description,
    required this.farmerId,
    required this.images,
    required this.price,
    required this.quantity,
  });

  // ProductModel copyWith({
  //   int? id,
  //   String? type,
  //   String? subtype,
  //   String? title,
  //   String? description,
  //   int? farmerId,
  //   List<String>? images,
  //   double? price,
  //   double? quantity,
  // }) {
  //   return ProductModel(
  //     id: id ?? this.id,
  //     type: type ?? this.type,
  //     subtype: subtype ?? this.subtype,
  //     title: title ?? this.title,
  //     description: description ?? this.description,
  //     farmerId: farmerId ?? this.farmerId,
  //     images: images ?? this.images,
  //     price: price ?? this.price,
  //     quantity: quantity ?? this.quantity,
  //   );
  // }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'type': type,
      'subtype': subtype,
      'title': title,
      'description': description,
      'farmerId': farmerId,
      'images': images,
      'price': price,
      'quantity': quantity,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'],
      type: map['type'],
      subtype: map['subtype'],
      title: map['title'],
      description: map['description'],
      farmerId: map['farmerId'],
      images: List<String>.from(map['images']),
      price: map['price'],
      quantity: map['quantity'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductModel(id: $id, type: $type, subtype: $subtype, title: '
        '$title, description: $description, farmerId: $farmerId, images: '
        '$images, price: $price, quantity: $quantity)';
  }

  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) return true;

  //   return other is ProductModel &&
  //       other.id == id &&
  //       other.type == type &&
  //       other.subtype == subtype &&
  //       other.title == title &&
  //       other.description == description &&
  //       other.farmerId == farmerId &&
  //       listEquals(other.images, images) &&
  //       other.price == price &&
  //       other.quantity == quantity;
  // }

  // @override
  // int get hashCode {
  //   return id.hashCode ^
  //       type.hashCode ^
  //       subtype.hashCode ^
  //       title.hashCode ^
  //       description.hashCode ^
  //       farmerId.hashCode ^
  //       images.hashCode ^
  //       price.hashCode ^
  //       quantity.hashCode;
  // }
}
