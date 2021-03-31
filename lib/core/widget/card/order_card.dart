import 'package:flutter/material.dart';
import 'package:fromfarmer/core/base/base_state.dart';
import 'package:fromfarmer/core/data/order_data.dart';
import 'package:fromfarmer/core/widget/card/order_item_card.dart';

class OrderCard extends StatefulWidget {
  final Order orderData;

  const OrderCard({
    Key? key,
    required this.orderData,
  }) : super(key: key);

  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends BaseState<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          dynamicWidth(0.03),
        ),
      ),
      color: Color(0xFFF0F2EC),
      child: SizedBox(
        height: dynamicWidth(0.5),
        child: Column(
          children: [
            Spacer(flex: 1),
            Expanded(
              flex: 6,
              child: Row(
                children: <Widget>[
                  Spacer(flex: 18),
                  Expanded(
                    flex: 150,
                    child: FittedBox(
                      child: Text('Time: ${widget.orderData.time}'),
                    ),
                  ),
                  Spacer(flex: 73),
                  Expanded(
                    flex: 41,
                    child: FittedBox(
                      child: Text('\$${widget.orderData.totalPrice}'),
                    ),
                  ),
                  Spacer(flex: 28),
                ],
              ),
            ),
            Expanded(
              flex: 20,
              child: ListView.builder(
                itemCount: widget.orderData.products.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, indexProduct) {
                  return OrderItemCard(
                    productData: widget.orderData.products[indexProduct],
                  );
                },
              ),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
