import 'package:flutter/material.dart';
import 'package:fromfarmer/core/base/base_state.dart';
import 'package:fromfarmer/core/model/product_model.dart';

class OrderItemCard extends StatefulWidget {
  final ProductModel productData;

  const OrderItemCard({
    Key? key,
    required this.productData,
  }) : super(key: key);
  @override
  _OrderItemCardState createState() => _OrderItemCardState();
}

class _OrderItemCardState extends BaseState<OrderItemCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          dynamicWidth(0.02),
        ),
      ),
      child: SizedBox(
        width: dynamicWidth(0.28),
        child: Column(
          children: <Widget>[
            Spacer(flex: 1),
            SizedBox(
              height: dynamicWidth(0.25),
              width: dynamicWidth(0.25),
              child: Image.asset(
                widget.productData.images[0],
                fit: BoxFit.cover,
              ),
            ),
            Spacer(flex: 1),
            Expanded(
              flex: 3,
              child: FittedBox(
                child: Text(widget.productData.subtype),
              ),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
