import 'package:flutter/material.dart';
import 'package:fromfarmer/core/base/base_state.dart';
import 'package:fromfarmer/core/data/basket_data.dart';
import 'package:fromfarmer/core/data/order_data.dart';
import 'package:fromfarmer/core/model/product_model.dart';
import 'package:fromfarmer/core/widget/card/basket_card.dart';

class BasketPageView extends StatefulWidget {
  @override
  _BasketPageViewState createState() => _BasketPageViewState();
}

class _BasketPageViewState extends BaseState<BasketPageView> {
  Basket basketData = Basket();
  Orders ordersData = Orders();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 13,
            child: CustomScrollView(
              slivers: <Widget>[
                buildSliverAppBar(),
                buildBasketItemList(),
              ],
            ),
          ),
          buildBottomConfirm(),
        ],
      ),
    );
  }

  SliverAppBar buildSliverAppBar() {
    return SliverAppBar(
      toolbarHeight: dynamicHeight(0.05),
      backgroundColor: Colors.white,
      title: Text(
        'My Basket',
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  SliverList buildBasketItemList() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return BasketCard(
            product: basketData.getProducts[index],
            onTapGarbage: () {
              setState(() {
                basketData.deleteItem(index);
              });
            },
          );
        },
        childCount: basketData.getProducts.length,
      ),
    );
  }

  Expanded buildBottomConfirm() {
    return Expanded(
      flex: 1,
      child: Card(
        margin: EdgeInsets.only(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(dynamicWidth(0.04)),
            topRight: Radius.circular(dynamicWidth(0.04)),
          ),
        ),
        color: Color(0xFFECECEC),
        child: Column(
          children: <Widget>[
            Spacer(flex: 1),
            Expanded(
              flex: 10,
              child: Row(
                children: <Widget>[
                  Spacer(flex: 4),
                  Expanded(
                    flex: 36,
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          height: dynamicHeight(0.06),
                          width: dynamicWidth(0.2),
                          child: FittedBox(
                            alignment: Alignment.centerLeft,
                            child: Text('Total'),
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          height: dynamicHeight(0.07),
                          width: dynamicWidth(0.3),
                          child: FittedBox(
                            alignment: Alignment.centerRight,
                            child: Text('\$ ${basketData.getBasketTotal}'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(flex: 3),
                  Expanded(
                    flex: 25,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      child: Text(
                        'Confirm Basket',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        if (basketData.getBasketTotal != 0) {
                          List<ProductModel> modelList = [];

                          for (ProductModel model in basketData.getProducts) {
                            modelList.add(model);
                          }

                          ordersData.addOrder(Order(
                            products: modelList,
                            time: getTimeNow(),
                            totalPrice: basketData.getBasketTotal,
                          ));

                          int length = basketData.getProducts.length;
                          for (int i = 0; i < length; i++) {
                            basketData.deleteItem(0);
                          }
                          setState(() {});
                        }
                      },
                    ),
                  ),
                  Spacer(flex: 4),
                ],
              ),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }

  String getTimeNow() {
    DateTime time = DateTime.now();
    return '${time.day}.${time.month}.${time.year} - ${time.hour}:${time.minute}';
  }
}
