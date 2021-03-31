import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fromfarmer/core/base/base_state.dart';

class CategoryCard extends StatefulWidget {
  final String title;
  final String categoryIconPath;
  final GestureTapCallback onTap;

  CategoryCard({
    Key? key,
    required this.title,
    required this.categoryIconPath,
    required this.onTap,
  }) : super(key: key);

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends BaseState<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFF0F2EC),
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: widget.onTap,
        child: SizedBox(
          width: dynamicHeight(0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(flex: 12),
              Expanded(
                flex: 80,
                child: SizedBox(
                  width: dynamicHeight(0.075),
                  child: SvgPicture.asset(widget.categoryIconPath),
                ),
              ),
              Spacer(flex: 8),
              Expanded(
                flex: 22,
                child: FittedBox(
                  child: Text(widget.title),
                ),
              ),
              Spacer(flex: 8),
            ],
          ),
        ),
      ),
    );
  }
}
