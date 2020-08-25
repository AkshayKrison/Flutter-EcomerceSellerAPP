import 'package:flutter/material.dart';
import 'package:seller_panel/widgets/bottom_navbar.dart';
import 'package:seller_panel/widgets/constants.dart';
import 'package:seller_panel/widgets/custom_appbar.dart';
import 'package:seller_panel/widgets/dash_card.dart';
import 'package:seller_panel/widgets/order_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomePageData(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class HomePageData extends StatefulWidget {
  const HomePageData({
    Key key,
  }) : super(key: key);

  @override
  _HomePageDataState createState() => _HomePageDataState();
}

class _HomePageDataState extends State<HomePageData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 29, top: 25),
            child: Text(
              'Last Month Earnings',
              style: kCommonTextStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 29.0, top: 6),
            child: Text(
              '#100000',
              style: kBoldedText,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 19,
              bottom: 14,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DashCard(
                  colour: Color(0xFFFFE9EA),
                  images: Image.asset('assets/products.png'),
                  numbers: '04',
                  names: 'Products',
                ),
                DashCard(
                  colour: Color(0xFFE2EDFF),
                  images: Image.asset('assets/cart.png'),
                  numbers: '10',
                  names: 'Total Sale',
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DashCard(
                colour: Color(0xFFF0E3FF),
                images: Image.asset('assets/earning.png'),
                numbers: '1000',
                names: 'Totla Earnings',
              ),
              DashCard(
                colour: Color(0xFFFFE9EA),
                images: Image.asset('assets/sucess.png'),
                numbers: '26',
                names: 'Successful Orders',
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 29.0),
            child:
                Text('New Orders', style: kBoldedText.copyWith(fontSize: 13)),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Column(
              children: [
                OrderList(
                  date: 'Thu, May 9, 08:20 PM',
                  productname: 'Googel Pixel 4a',
                  code: '12432142354',
                  amount: '#49.99',
                  status: 'Pending',
                  cheight: 130,
                  cwidth: 380,
                  lwidth: 300.0,
                  larrow: 165.0,
                ),
                OrderList(
                  date: 'Thu, May 9, 08:20 PM',
                  productname: 'Iphone 11 Pro',
                  code: '12432142354',
                  amount: '#49.99',
                  status: 'Shipped',
                  cheight: 130,
                  cwidth: 380,
                  lwidth: 300.0,
                  larrow: 165.0,
                ),
                OrderList(
                  date: 'Thu, May 9, 08:20 PM',
                  productname: 'Poco F2',
                  code: '12432142354',
                  amount: '#49.99',
                  status: 'Pending',
                  cheight: 130,
                  cwidth: 380,
                  lwidth: 300.0,
                  larrow: 165.0,
                ),
                OrderList(
                  date: 'Thu, May 9, 08:20 PM',
                  productname: 'HP Laptop',
                  code: '12432142354',
                  amount: '#49.99',
                  status: 'Pending',
                  cheight: 130,
                  cwidth: 380,
                  lwidth: 300.0,
                  larrow: 165.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
