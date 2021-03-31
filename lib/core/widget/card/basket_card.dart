import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fromfarmer/core/base/base_state.dart';
import 'package:fromfarmer/core/model/product_model.dart';

class BasketCard extends StatefulWidget {
  final ProductModel product;
  final GestureTapCallback? onTapGarbage;
  const BasketCard({
    Key? key,
    required this.product,
    required this.onTapGarbage,
  }) : super(key: key);

  @override
  _BasketCardState createState() => _BasketCardState();
}

class _BasketCardState extends BaseState<BasketCard> {
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
        height: dynamicWidth(0.3),
        child: Row(
          children: <Widget>[
            Spacer(flex: 21),
            SizedBox(
              height: dynamicWidth(0.25),
              width: dynamicWidth(0.25),
              child: Image.asset(
                widget.product.images[0],
                fit: BoxFit.cover,
              ),
            ),
            Spacer(flex: 25),
            Expanded(
              flex: 434,
              child: Column(
                children: <Widget>[
                  Spacer(flex: 1),
                  Expanded(
                    flex: 10,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 30,
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                height: dynamicWidth(0.08),
                                width: dynamicWidth(0.5),
                                child: FittedBox(
                                  alignment: Alignment.centerLeft,
                                  child: Text(widget.product.subtype),
                                ),
                              ),
                              Spacer(),
                              InkResponse(
                                splashColor: Colors.blue.withAlpha(30),
                                radius: dynamicHeight(0.04),
                                child: SvgPicture.asset(
                                    'assets/icons/garbage.svg'),
                                onTap: widget.onTapGarbage,
                              ),
                            ],
                          ),
                        ),
                        Spacer(flex: 35),
                        Expanded(
                          flex: 38,
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                height: dynamicWidth(0.08),
                                width: dynamicWidth(0.3),
                                child: FittedBox(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      '\$${widget.product.price.toString()}'),
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(flex: 1),
                ],
              ),
            ),
            Spacer(flex: 21),
          ],
        ),
      ),
    );
  }
}
