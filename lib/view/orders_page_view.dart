import 'package:flutter/material.dart';
import 'package:fromfarmer/core/base/base_state.dart';
import 'package:fromfarmer/core/data/order_data.dart';
import 'package:fromfarmer/core/widget/card/order_card.dart';

class OrdersPageView extends StatefulWidget {
  @override
  _OrdersPageViewState createState() => _OrdersPageViewState();
}

class _OrdersPageViewState extends BaseState<OrdersPageView> {
  Orders ordersData = Orders();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          buildSliverAppBar(),
          buildOrdersItemList(),
        ],
      ),
    );
  }

  SliverAppBar buildSliverAppBar() {
    return SliverAppBar(
      toolbarHeight: dynamicHeight(0.05),
      backgroundColor: Colors.white,
      title: Text(
        'My Orders',
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  SliverList buildOrdersItemList() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, indexOrder) {
          return OrderCard(orderData: ordersData.getOrders[indexOrder]);
        },
        childCount: ordersData.getOrders.length,
      ),
    );
  }
}
