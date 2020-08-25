import 'package:flutter/material.dart';
import 'package:seller_panel/screens/add_product_page.dart';
import 'package:seller_panel/screens/home_page.dart';
import 'package:seller_panel/screens/login_signup/login_page.dart';
import 'package:seller_panel/screens/onboard_screens/onboard_pages.dart';
import 'package:seller_panel/screens/order_details_page.dart';
import 'package:seller_panel/screens/orders_page.dart';
import 'package:seller_panel/screens/product_info.dart';
import 'package:seller_panel/screens/product_listing.dart';
import 'package:seller_panel/screens/profile_page.dart';

void main() {
  runApp(
    MaterialApp(
      // home: FirstOnBoard(),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFFFFFFFE),
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => OnBoardingPage(),
        '/login': (context) => LoginPage(),
        '/homepage': (context) => HomePage(),
        '/orders': (context) => OrdersPage(),
        '/orders_details': (context) => OrderDetailspage(),
        'product_list': (context) => ProductListing(),
        'profile': (context) => ProfilePage(),
        'productinfo': (context) => ProductInfoPage(),
        'add_product': (context) => AddProductPage(),
      },
    );
  }
}
