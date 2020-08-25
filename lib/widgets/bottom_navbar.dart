import 'package:flutter/material.dart';
import 'constants.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(0, 3),
          blurRadius: 10,
        ),
      ]),
      child: Padding(
        padding: const EdgeInsets.only(top: 13.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, '/homepage');
                });
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: IconsData(
                  icons: Icon(
                    Icons.home,
                    color: kBottomNavIconsColor,
                  ),
                  navnames: 'Home',
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, '/orders');
                });
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: IconsData(
                  icons: Icon(
                    Icons.shopping_basket,
                    color: kBottomNavIconsColor,
                  ),
                  navnames: 'Orders',
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'product_list');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: IconsData(
                  icons: Icon(
                    Icons.dashboard,
                    color: kBottomNavIconsColor,
                  ),
                  navnames: 'Products',
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'profile');
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: IconsData(
                  icons: Icon(
                    Icons.person,
                    color: kBottomNavIconsColor,
                  ),
                  navnames: 'Profile',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class IconsData extends StatelessWidget {
  final navnames;
  final icons;
  const IconsData({
    Key key,
    this.navnames,
    this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icons,
        Text(
          navnames,
          style: kCommonTextStyle,
        ),
      ],
    );
  }
}
