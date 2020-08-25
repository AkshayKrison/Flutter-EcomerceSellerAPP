import 'package:flutter/material.dart';
import 'constants.dart';

class CustomNavBar extends PreferredSize {
  Size get preferredSize => Size.fromHeight(100); // set height of your choice
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.menu, color: Colors.black),
      title: SizedBox(
        child: Image.asset('assets/logo.png'),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 14.0),
          child: Icon(Icons.notifications_none, color: kIconsColor),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Icon(Icons.add_shopping_cart, color: kIconsColor),
        ),
      ],
      bottom: TabBar(
        unselectedLabelColor: kTabTextInactiveColor,
        labelColor: kTabTextActiveColor,
        indicatorColor: kTabTextInactiveColor,
        tabs: <Widget>[
          Tab(
            child: Text('Total Orders'),
          ),
          Tab(
            child: Text(
              'Pending',
            ),
          ),
          Tab(
            child: Text('Cancelled'),
          ),
        ],
      ),
    );
  }
}
