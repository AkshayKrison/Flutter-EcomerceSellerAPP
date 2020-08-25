import 'package:flutter/material.dart';
import 'package:seller_panel/widgets/constants.dart';
import 'package:seller_panel/widgets/dropdown_button.dart';
import 'package:seller_panel/widgets/horizontal_lign.dart';

class OrdersProductDetails extends StatelessWidget {
  const OrdersProductDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 25.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/products/component-small.png'),
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
                      Row(
                        children: [
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
                          DorpDownButton(),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            HorizontalLign(
              lwidth: MediaQuery.of(context).size.width / 1,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            Row(
              children: [
                Image.asset('assets/products/component-small.png'),
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
                      Row(
                        children: [
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
                          DorpDownButton(),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
