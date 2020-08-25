import 'package:flutter/material.dart';
import 'package:seller_panel/screens/section_screens/address_section.dart';
import 'package:seller_panel/screens/section_screens/basic_info.dart';
import 'package:seller_panel/screens/section_screens/payment_settings.dart';
import 'package:seller_panel/widgets/constants.dart';
import 'package:seller_panel/widgets/page_header.dart';
import 'package:seller_panel/widgets/submit_button.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size maxSize = MediaQuery.of(context).size;
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
              pageheader: 'Basic Info',
            ),
            BasicInfo(maxSize: maxSize),
            PageHeader(
              pageheader: 'Company Adress',
            ),
            AddressSection(size: maxSize),
            PageHeader(
              pageheader: 'Payment Setting',
            ),
            PaymentSection(
              size: maxSize,
            ),
            SubmitButton(
              size: maxSize,
              title: 'UPDATE',
            ),
          ],
        ),
      ),
    );
  }
}
