import 'package:flutter/material.dart';
import 'package:seller_panel/widgets/bottom_navbar.dart';
import 'package:seller_panel/widgets/custom_navbars.dart';
import 'package:seller_panel/widgets/order_list.dart';

class OrdersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: CustomNavBar(),
        body: SafeArea(
          child: TabBarView(
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/orders_details');
                      },
                      child: OrderList(
                        date: 'Thu, May 9, 08:20 PM',
                        productname: 'Iphone 11 Pro',
                        code: '12432142354',
                        amount: '#49.99',
                        status: 'Shipped',
                        larrow: 165.0,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/orders_details');
                      },
                      child: OrderList(
                        date: 'Thu, May 9, 08:20 PM',
                        productname: 'Iphone 11 Pro',
                        code: '12432142354',
                        amount: '#49.99',
                        status: 'Shipped',
                        larrow: 165.0,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/orders_details');
                      },
                      child: OrderList(
                        date: 'Thu, May 9, 08:20 PM',
                        productname: 'Iphone 11 Pro',
                        code: '12432142354',
                        amount: '#49.99',
                        status: 'Shipped',
                        larrow: 165.0,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/orders_details');
                      },
                      child: OrderList(
                        date: 'Thu, May 9, 08:20 PM',
                        productname: 'Iphone 11 Pro',
                        code: '12432142354',
                        amount: '#49.99',
                        status: 'Shipped',
                        larrow: 165.0,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/orders_details');
                      },
                      child: OrderList(
                        date: 'Thu, May 9, 08:20 PM',
                        productname: 'Iphone 11 Pro',
                        code: '12432142354',
                        amount: '#49.99',
                        status: 'Shipped',
                        larrow: 165.0,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/orders_details');
                      },
                      child: OrderList(
                        date: 'Thu, May 9, 08:20 PM',
                        productname: 'Iphone 11 Pro',
                        code: '12432142354',
                        amount: '#49.99',
                        status: 'Shipped',
                        larrow: 165.0,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/orders_details');
                      },
                      child: OrderList(
                        date: 'Thu, May 9, 08:20 PM',
                        productname: 'Iphone 11 Pro',
                        code: '12432142354',
                        amount: '#49.99',
                        status: 'Shipped',
                        larrow: 165.0,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/orders_details');
                      },
                      child: OrderList(
                        date: 'Thu, May 9, 08:20 PM',
                        productname: 'Iphone 11 Pro',
                        code: '12432142354',
                        amount: '#49.99',
                        status: 'Shipped',
                        larrow: 165.0,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/orders_details');
                      },
                      child: OrderList(
                        date: 'Thu, May 9, 08:20 PM',
                        productname: 'Iphone 11 Pro',
                        code: '12432142354',
                        amount: '#49.99',
                        status: 'Shipped',
                        larrow: 165.0,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/orders_details');
                      },
                      child: OrderList(
                        date: 'Thu, May 9, 08:20 PM',
                        productname: 'Iphone 11 Pro',
                        code: '12432142354',
                        amount: '#49.99',
                        status: 'Shipped',
                        larrow: 165.0,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/orders_details');
                      },
                      child: OrderList(
                        date: 'Thu, May 9, 08:20 PM',
                        productname: 'Iphone 11 Pro',
                        code: '12432142354',
                        amount: '#49.99',
                        status: 'Shipped',
                        larrow: 165.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:seller_panel/widgets/constants.dart';

// class OrdersPage extends StatefulWidget {
//   @override
//   _OrdersPageState createState() => _OrdersPageState();
// }

// class _OrdersPageState extends State<OrdersPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Icon(Icons.menu, color: Colors.black),
//         title: SizedBox(
//           child: Image.asset('assets/logo.png'),
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 14.0),
//             child: Icon(Icons.notifications_none, color: kIconsColor),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 20.0),
//             child: Icon(Icons.add_shopping_cart, color: kIconsColor),
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Container(
//             height: (MediaQuery.of(context).size.height / 13),
//             width: (MediaQuery.of(context).size.width),
//             color: kTabInactiveButtonColor,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       color:
//                     });
//                   },
//                   child: Container(
//                     width: 104,
//                     height: 35,
//                     decoration: BoxDecoration(
//                         color: kTabActiveButtonColor,
//                         borderRadius: BorderRadius.circular(30)),
//                     child: Center(
//                       child: Text('Total Orders', style: kTabActiveTextColor),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   width: 104,
//                   height: 35,
//                   decoration: BoxDecoration(
//                       color: kTabInactiveButtonColor,
//                       borderRadius: BorderRadius.circular(30)),
//                   child: Center(
//                     child: Text('Total Orders', style: kTabActiveTextColor),
//                   ),
//                 ),
//                 Container(
//                   width: 104,
//                   height: 35,
//                   decoration: BoxDecoration(
//                       color: kTabInactiveButtonColor,
//                       borderRadius: BorderRadius.circular(30)),
//                   child: Center(
//                     child: Text('Total Orders', style: kTabActiveTextColor),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
