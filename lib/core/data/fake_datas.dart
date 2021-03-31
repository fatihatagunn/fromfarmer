import 'package:fromfarmer/core/model/product_model.dart';

class FakeProducts {
  static List<ProductModel>? _fakeProducts;
  static List<ProductModel>? _fakeTomatoes;
  static List<ProductModel>? _fakeCarrots;
  static List<ProductModel>? _fakeLemons;
  static List<ProductModel>? _fakeLettuces;
  static List<ProductModel>? _fakeBroccolies;
  static List<ProductModel>? _fakePotatoes;

  List<ProductModel> get getFakeProducts {
    if (_fakeProducts == null) {
      _fakeProducts = getFakeTomatoes +
          getFakeCarrots +
          getFakeLemons +
          getFakeLettuces +
          getFakeBroccolies +
          getFakePotatoes;
    }
    return _fakeProducts!;
  }

  List<ProductModel> get getFakeTomatoes {
    if (_fakeTomatoes == null) {
      _fakeTomatoes = [
        ProductModel(
          id: 1,
          type: 'Tomato',
          subtype: 'Cherry Tomato',
          title: 'Fresh Tomato',
          description: 'From the garden to your table',
          farmerId: 1,
          images: ['assets/images/cherry_tomato.jpg'],
          price: 2.1,
          quantity: 25,
        ),
        ProductModel(
          id: 2,
          type: 'Tomato',
          subtype: 'Roma Tomato',
          title: 'Fresh Tomato',
          description: 'From the garden to your table',
          farmerId: 1,
          images: ['assets/images/roma_tomato.jpg'],
          price: 1.4,
          quantity: 25,
        ),
        ProductModel(
          id: 3,
          type: 'Tomato',
          subtype: 'Better Boy',
          title: 'Fresh Tomato',
          description: 'From the garden to your table',
          farmerId: 1,
          images: ['assets/images/better_boy_tomato.jpg'],
          price: 2.6,
          quantity: 30,
        ),
      ];
    }
    return _fakeTomatoes!;
  }

  List<ProductModel> get getFakeCarrots {
    if (_fakeCarrots == null) {
      _fakeCarrots = [
        ProductModel(
          id: 4,
          type: 'Carrot',
          subtype: 'Yellow Carrot',
          title: 'Fresh Carrot',
          description: 'From the garden to your table',
          farmerId: 1,
          images: ['assets/images/carrot.jpg'],
          price: 2.1,
          quantity: 25,
        ),
        ProductModel(
          id: 5,
          type: 'Carrot',
          subtype: 'Black Carrot',
          title: 'Fresh Carrot',
          description: 'From the garden to your table',
          farmerId: 1,
          images: ['assets/images/black_carrot.jpg'],
          price: 5.5,
          quantity: 25,
        ),
      ];
    }
    return _fakeCarrots!;
  }

  List<ProductModel> get getFakeLemons {
    if (_fakeLemons == null) {
      _fakeLemons = [
        ProductModel(
          id: 6,
          type: 'Lemon',
          subtype: 'Meyer Lemon',
          title: 'Fresh Lemon',
          description: 'From the garden to your table',
          farmerId: 1,
          images: ['assets/images/meyer_lemon.jpg'],
          price: 0.5,
          quantity: 25,
        ),
        ProductModel(
          id: 7,
          type: 'Lemon',
          subtype: 'Lisbon Lemon',
          title: 'Fresh Lemon',
          description: 'From the garden to your table',
          farmerId: 1,
          images: ['assets/images/lisbon_lemon.jpg'],
          price: 0.6,
          quantity: 25,
        ),
      ];
    }
    return _fakeLemons!;
  }

  List<ProductModel> get getFakeLettuces {
    if (_fakeLettuces == null) {
      _fakeLettuces = [
        ProductModel(
          id: 8,
          type: 'Lettuce',
          subtype: 'Leaf Green Lettuce',
          title: 'Fresh Lettuce',
          description: 'From the garden to your table',
          farmerId: 1,
          images: ['assets/images/leaf_green_lettuce.jpg'],
          price: 0.25,
          quantity: 25,
        ),
        ProductModel(
          id: 9,
          type: 'Lettuce',
          subtype: 'Iceberg Green Lettuce',
          title: 'Fresh Lettuce',
          description: 'From the garden to your table',
          farmerId: 1,
          images: ['assets/images/iceberg_lettuce.jpg'],
          price: 0.3,
          quantity: 25,
        ),
      ];
    }
    return _fakeLettuces!;
  }

  List<ProductModel> get getFakeBroccolies {
    if (_fakeBroccolies == null) {
      _fakeBroccolies = [
        ProductModel(
          id: 10,
          type: 'Broccoli',
          subtype: 'Green Goliath Broccoli',
          title: 'Fresh Broccoli',
          description: 'From the garden to your table',
          farmerId: 1,
          images: ['assets/images/green_goliath_broccoli.jpg'],
          price: 4.6,
          quantity: 25,
        ),
      ];
    }
    return _fakeBroccolies!;
  }

  List<ProductModel> get getFakePotatoes {
    if (_fakePotatoes == null) {
      _fakePotatoes = [
        ProductModel(
          id: 11,
          type: 'Potato',
          subtype: 'Russet Potato',
          title: 'Fresh Potato',
          description: 'From the garden to your table',
          farmerId: 1,
          images: ['assets/images/russet_potato.jpg'],
          price: 1.0,
          quantity: 25,
        ),
        ProductModel(
          id: 12,
          type: 'Potato',
          subtype: 'Yukon Gold Potato',
          title: 'Fresh Potato',
          description: 'From the garden to your table',
          farmerId: 1,
          images: ['assets/images/yukon_gold_potato.jpg'],
          price: 1.1,
          quantity: 25,
        ),
      ];
    }
    return _fakePotatoes!;
  }
}
