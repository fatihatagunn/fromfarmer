import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fromfarmer/core/base/base_state.dart';
import 'package:fromfarmer/core/model/product_model.dart';

class ProductCard extends StatefulWidget {
  final ProductModel product;
  final GestureTapCallback? onTapBasket;
  @override
  _ProductCardState createState() => _ProductCardState();

  ProductCard({
    required this.product,
    this.onTapBasket,
  });
}

class _ProductCardState extends BaseState<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          dynamicWidth(0.03),
        ),
      ),
      color: Color(0xFFF0F2EC),
      child: Column(
        children: <Widget>[
          Spacer(flex: 10),
          SizedBox(
            width: dynamicWidth(0.4),
            height: dynamicWidth(0.4),
            // width: dynamicHeight(0.2),
            // height: dynamicHeight(0.2),
            child: Image.asset(
              widget.product.images[0],
              fit: BoxFit.cover,
            ),
          ),
          Spacer(flex: 10),
          Expanded(
            flex: 36,
            child: FittedBox(
              child: Text(widget.product.subtype),
            ),
          ),
          Spacer(flex: 10),
          // Expanded(
          //   flex: 24,
          //   child: FittedBox(
          //     child: Text('Shipping Time'),
          //   ),
          // ),
          // Spacer(flex: 10),
          Expanded(
            flex: 65,
            child: Row(
              children: <Widget>[
                Spacer(flex: 35),
                Expanded(
                  flex: 102,
                  child: FittedBox(
                    child: Text('\$${widget.product.price}'),
                  ),
                ),
                Spacer(flex: 78),
                Expanded(
                  flex: 65,
                  child: InkResponse(
                    splashColor: Colors.blue.withAlpha(30),
                    radius: dynamicHeight(0.04),
                    child: SvgPicture.asset('assets/icons/add_to_basket.svg'),
                    onTap: widget.onTapBasket,
                  ),
                ),
                Spacer(flex: 35),
              ],
            ),
          ),
          Spacer(flex: 15),
        ],
      ),
    );
  }
}
