import 'package:fromfarmer/core/model/product_model.dart';

class Basket {
  static List<ProductModel>? _products;

  void addProducts(ProductModel value) {
    if (_products == null) {
      _products = [value];
    } else {
      _products!.add(value);
    }
  }

  List<ProductModel> get getProducts {
    if (_products == null) {
      _products = [];
    }
    return _products!;
  }

  double get getBasketTotal {
    double total = 0;
    if (_products != null) {
      for (ProductModel product in _products!) {
        total += product.price;
      }
    }
    return total;
  }

  void deleteItem(int index) {
    if (_products != null) {
      _products!.removeAt(index);
    }
  }

  @override
  String toString() {
    return _products.toString();
  }
}
