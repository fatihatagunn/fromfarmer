import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fromfarmer/core/base/base_state.dart';
import 'package:fromfarmer/view/basket_page_view.dart';
import 'package:fromfarmer/view/orders_page_view.dart';
import 'package:fromfarmer/view/products_page_view.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends BaseState<HomeView> {
  int _selectedIndex = 0;

  static List<Widget> _selectedPage = <Widget>[
    ProductsPageView(),
    BasketPageView(),
    OrdersPageView(),
  ];

  @override
  Widget build(BuildContext context) {
    double iconDynamicHeight = dynamicHeight(0.05);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          _selectedIndex = index;
          setState(() {});
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              _selectedIndex == 0
                  ? 'assets/icons/broccoli.svg'
                  : 'assets/icons/broccoli_lineal.svg',
              height: iconDynamicHeight,
            ),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              _selectedIndex == 1
                  ? 'assets/icons/basket.svg'
                  : 'assets/icons/basket_lineal.svg',
              height: iconDynamicHeight,
            ),
            label: 'Basket',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              _selectedIndex == 2
                  ? 'assets/icons/till_basket.svg'
                  : 'assets/icons/till_basket_lineal.svg',
              height: iconDynamicHeight,
            ),
            label: 'Orders',
          ),
        ],
      ),
      body: _selectedPage.elementAt(_selectedIndex),
    );
  }
}
