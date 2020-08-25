import 'package:flutter/material.dart';
import 'package:seller_panel/widgets/bottom_navbar.dart';
import 'package:seller_panel/widgets/button.dart';
import 'package:seller_panel/widgets/constants.dart';
import 'package:seller_panel/widgets/custom_appbar.dart';
import 'package:seller_panel/widgets/horizontal_lign.dart';

class ProductListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProductData(),
                  ProductData(),
                  ProductData(),
                  ProductData(),
                  ProductData(),
                  ProductData(),
                  ProductData(),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 27.0,
                      bottom: 30.0,
                    ),
                    child: CustomButton(
                      color: Color(0xFF002442),
                      name: 'Add New Product',
                      width: 1.2,
                      height: 15,
                      radius: 50,
                      borderWidth: 1.0,
                      borderColor: Color(0xFF002442),
                      textColor: Colors.white,
                      textSize: 14,
                      routeName: 'add_product',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class ProductData extends StatelessWidget {
  const ProductData({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, 'productinfo'),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0, top: 20.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/products/component-small.png',
                  width: 50,
                  height: 68,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Product Name',
                        style: kDashBoardText.copyWith(fontSize: 14),
                      ),
                      Text(
                        'ID #2422434643',
                        style: kBoldedText.copyWith(fontSize: 10),
                      ),
                      Text(
                        '49.99',
                        style: kDashBoardText.copyWith(
                          fontSize: 15,
                          color: Color(0xFFFF6969),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3.9,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Container(
                    width: 65.0,
                    height: 17.8,
                    decoration: BoxDecoration(
                      color: Color(0xFF022542),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Apple',
                        style: kCommonTextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        HorizontalLign(
          lwidth: MediaQuery.of(context).size.width / 1,
        ),
      ],
    );
  }
}
