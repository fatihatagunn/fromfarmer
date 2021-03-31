import 'package:fromfarmer/core/model/product_model.dart';

class Order {
  List<ProductModel> products;
  String time;
  double totalPrice;

  Order({
    required this.products,
    required this.time,
    required this.totalPrice,
  });
}

class Orders {
  static List<Order>? _orders;

  void addOrder(Order value) {
    if (_orders == null) {
      _orders = [value];
    } else {
      _orders!.add(value);
    }
  }

  List<Order> get getOrders {
    if (_orders == null) {
      _orders = [];
    }
    return _orders!;
  }

  @override
  String toString() {
    return _orders.toString();
  }
}
