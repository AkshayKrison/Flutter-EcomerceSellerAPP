import 'package:flutter/material.dart';
import 'package:seller_panel/widgets/paid_unpaid_status.dart';

import 'constants.dart';
import 'horizontal_lign.dart';

class OrderList extends StatelessWidget {
  final productname;
  final code;
  final date;
  final status;
  final amount;
  final double cheight;
  final double cwidth;
  final double lwidth;
  final double larrow;
  const OrderList({
    Key key,
    this.productname,
    this.code,
    this.date,
    this.status,
    this.amount,
    this.cheight,
    this.cwidth,
    this.lwidth,
    this.larrow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: cheight,
      width: cwidth,
      child: Padding(
        padding: const EdgeInsets.only(left: 29.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                productname,
                style: kOrderDetailsText,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                'Order Code : $code | $date',
                style: kOrderCodeTextStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                children: [
                  Text(
                    amount,
                    style: kOrderDetailsText.copyWith(fontSize: 15),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  PiadUnpaid(
                    status: 'Paid',
                    colour: Colors.green,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: larrow),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                'Delivery Status: $status',
                style: kCommonTextStyle,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            HorizontalLign(lwidth: lwidth),
          ],
        ),
      ),
    );
  }
}
