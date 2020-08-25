import 'package:flutter/material.dart';
import 'package:seller_panel/screens/section_screens/shop_info.dart';
import 'package:seller_panel/screens/section_screens/slider_settings.dart';
import 'package:seller_panel/widgets/constants.dart';
import 'package:seller_panel/widgets/page_header.dart';
import 'package:seller_panel/widgets/submit_button.dart';

class ShopSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 18,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.notifications_none, color: kIconsColor),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PageHeader(
              pageheader: 'Shop Info',
            ),
            ShopInfo(size: size),
            PageHeader(
              pageheader: 'Slider Settings',
            ),
            SliderSettings(size: size),
            SubmitButton(
              size: size,
              title: 'SUBMIT',
            ),
          ],
        ),
      ),
    );
  }
}
