import 'package:flutter/material.dart';
import 'package:fromfarmer/core/base/base_state.dart';
import 'package:fromfarmer/core/data/basket_data.dart';
import 'package:fromfarmer/core/data/fake_datas.dart';
import 'package:fromfarmer/core/model/product_model.dart';
import 'package:fromfarmer/core/widget/card/category_card.dart';
import 'package:fromfarmer/core/widget/card/product_card.dart';

class ProductsPageView extends StatefulWidget {
  @override
  _ProductsPageViewState createState() => _ProductsPageViewState();
}

class _ProductsPageViewState extends BaseState<ProductsPageView> {
  FakeProducts fakeDatas = FakeProducts();
  List<ProductModel>? datas;

  Basket basketData = Basket();

  @override
  void initState() {
    super.initState();
    datas = fakeDatas.getFakeProducts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          buildSliverAppBar(),
          buildCategoriesTitle(),
          buildCategories(),
          buildProductsTitle(),
          buildProductsGrid(),
        ],
      ),
    );
  }

  SliverAppBar buildSliverAppBar() {
    return SliverAppBar(
      toolbarHeight: dynamicHeight(0.05),
      backgroundColor: Colors.white,
      title: Text(
        'From Farmer',
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  SliverToBoxAdapter buildCategoriesTitle() {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: dynamicHeight(0.05),
        child: FittedBox(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Categories'),
          ),
        ),
      ),
    );
  }

  SliverToBoxAdapter buildCategories() {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: dynamicHeight(0.1),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            CategoryCard(
              title: 'All Products',
              categoryIconPath: 'assets/icons/all_products.svg',
              onTap: () {
                setState(() {
                  datas = fakeDatas.getFakeProducts;
                });
              },
            ),
            CategoryCard(
              title: 'Tomato',
              categoryIconPath: 'assets/icons/tomato.svg',
              onTap: () {
                setState(() {
                  datas = fakeDatas.getFakeTomatoes;
                });
              },
            ),
            CategoryCard(
              title: 'Carrot',
              categoryIconPath: 'assets/icons/carrot.svg',
              onTap: () {
                setState(() {
                  datas = fakeDatas.getFakeCarrots;
                });
              },
            ),
            CategoryCard(
              title: 'Lemon',
              categoryIconPath: 'assets/icons/lemon.svg',
              onTap: () {
                setState(() {
                  datas = fakeDatas.getFakeLemons;
                });
              },
            ),
            CategoryCard(
              title: 'Lettuce',
              categoryIconPath: 'assets/icons/lettuce.svg',
              onTap: () {
                setState(() {
                  datas = fakeDatas.getFakeLettuces;
                });
              },
            ),
            CategoryCard(
              title: 'Broccoli',
              categoryIconPath: 'assets/icons/broccoli.svg',
              onTap: () {
                setState(() {
                  datas = fakeDatas.getFakeBroccolies;
                });
              },
            ),
            CategoryCard(
              title: 'Potato',
              categoryIconPath: 'assets/icons/potato.svg',
              onTap: () {
                setState(() {
                  datas = fakeDatas.getFakePotatoes;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter buildProductsTitle() {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: dynamicHeight(0.05),
        child: FittedBox(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Products',
            ),
          ),
        ),
      ),
    );
  }

  SliverGrid buildProductsGrid() {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: dynamicWidth(0.7),
        crossAxisSpacing: dynamicWidth(0.007),
        mainAxisSpacing: dynamicWidth(0.007),
      ),
      // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //   maxCrossAxisExtent: dynamicHeight(0.32),
      //   mainAxisExtent: dynamicHeight(0.45),
      //   mainAxisSpacing: dynamicHeight(0.01),
      //   crossAxisSpacing: dynamicHeight(0.01),
      // ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return ProductCard(
            product: datas![index],
            onTapBasket: () {
              basketData.addProducts(datas![index]);
            },
          );
        },
        childCount: datas!.length,
      ),
    );
  }
}
