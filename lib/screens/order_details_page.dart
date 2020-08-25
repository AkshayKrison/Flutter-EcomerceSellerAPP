import 'package:flutter/material.dart';
import 'package:seller_panel/screens/section_screens/orders_product_details.dart';
import 'package:seller_panel/widgets/constants.dart';
import 'package:seller_panel/widgets/horizontal_lign.dart';

class OrderDetailspage extends StatefulWidget {
  @override
  _OrderDetailspageState createState() => _OrderDetailspageState();
}

class _OrderDetailspageState extends State<OrderDetailspage> {
  String dropdownValue = 'Pending';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
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
        title: Text(
          'Order Details',
          style: kBoldedText.copyWith(
            fontSize: 14,
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
          children: [
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.4,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Order Code: 12124234',
                        style: kOrderCodeTextStyle,
                      ),
                    ),
                    HorizontalLign(
                      lwidth: MediaQuery.of(context).size.width / 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Customer Name: Akshay',
                        style: kOrderCodeTextStyle,
                      ),
                    ),
                    HorizontalLign(
                      lwidth: MediaQuery.of(context).size.width / 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Email : customer@example.com',
                        style: kCommonTextStyle,
                      ),
                    ),
                    HorizontalLign(
                      lwidth: MediaQuery.of(context).size.width / 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Order date : 14-07-2020 07:07 AM',
                        style: kCommonTextStyle,
                      ),
                    ),
                    HorizontalLign(
                      lwidth: MediaQuery.of(context).size.width / 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Order status : Pending',
                        style: kCommonTextStyle,
                      ),
                    ),
                    HorizontalLign(
                      lwidth: MediaQuery.of(context).size.width / 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Total order amount : Rs52,000.000',
                        style: kCommonTextStyle,
                      ),
                    ),
                    HorizontalLign(
                      lwidth: MediaQuery.of(context).size.width / 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Contact : 8136862662',
                        style: kCommonTextStyle,
                      ),
                    ),
                    HorizontalLign(
                      lwidth: MediaQuery.of(context).size.width / 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Payment method : Cash on delivery',
                        style: kCommonTextStyle,
                      ),
                    ),
                    HorizontalLign(
                      lwidth: MediaQuery.of(context).size.width / 1,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            OrdersProductDetails(),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 5,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ADRESS',
                      style: kCommonTextStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Optimist',
                        style: kBoldedText.copyWith(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        'No 987, NBF Building,\n Opposite Abu Hail Center,\n Dubai, UAE',
                        style: kOrderDetailsText,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order Amount',
                      style: kCommonTextStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, right: 40.0, bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Subtotal',
                            style: kOrderDetailsText,
                          ),
                          Text(
                            'Rs.52400.00',
                            style: kOrderDetailsText,
                          ),
                        ],
                      ),
                    ),
                    HorizontalLign(
                      lwidth: MediaQuery.of(context).size.width / 1.2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, right: 40.0, bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Shipping Charge',
                            style: kOrderDetailsText,
                          ),
                          Text(
                            'Rs.0.000',
                            style: kOrderDetailsText,
                          ),
                        ],
                      ),
                    ),
                    HorizontalLign(
                      lwidth: MediaQuery.of(context).size.width / 1.2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, right: 40.0, bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Tax.',
                            style: kOrderDetailsText,
                          ),
                          Text(
                            'Rs.0.000',
                            style: kOrderDetailsText,
                          ),
                        ],
                      ),
                    ),
                    HorizontalLign(
                      lwidth: MediaQuery.of(context).size.width / 1.2,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, right: 40.0, bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: kOrderDetailsText.copyWith(fontSize: 15),
                          ),
                          Text(
                            'Rs.52000.000',
                            style: kOrderDetailsText.copyWith(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    HorizontalLign(
                      lwidth: MediaQuery.of(context).size.width / 1.2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
