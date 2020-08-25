import 'package:flutter/material.dart';
import 'package:seller_panel/screens/section_screens/add_product_image_upload_section.dart';
import 'package:seller_panel/screens/section_screens/filter_section.dart';
import 'package:seller_panel/screens/section_screens/general_section.dart';
import 'package:seller_panel/screens/section_screens/price_section.dart';
import 'package:seller_panel/widgets/constants.dart';
import 'package:seller_panel/widgets/input_text_box.dart';
import 'package:seller_panel/widgets/page_header.dart';
import 'package:seller_panel/widgets/submit_button.dart';
import 'package:seller_panel/widgets/text_area.dart';

class AddProductPage extends StatefulWidget {
  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
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
              pageheader: 'General',
            ),
            GeneralSections(size: maxSize),
            PageHeader(
              pageheader: 'Images',
            ),
            ImageUploadSection(size: maxSize),
            PageHeader(
              pageheader: 'Customer Choice',
            ),
            FilterSection(size: maxSize),
            PageHeader(
              pageheader: 'Price',
            ),
            PriceSection(size: maxSize),
            PageHeader(
              pageheader: 'Shipping',
            ),
            Container(
              width: maxSize.width,
              height: maxSize.height * 0.2,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 30.0,
                  top: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InputTextBox(
                      labeltext: 'Shipping Charge',
                    ),
                  ],
                ),
              ),
            ),
            PageHeader(
              pageheader: 'Description',
            ),
            Container(
              width: maxSize.width,
              height: maxSize.height * 0.2,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(maxSize.width * 0.05),
                child: TextArea(),
              ),
            ),
            SubmitButton(
              size: maxSize,
              title: 'SUBMIT',
            ),
          ],
        ),
      ),
    );
  }
}
