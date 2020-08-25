import 'package:flutter/material.dart';
import 'package:seller_panel/widgets/input_text_box.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.42,
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
              labeltext: 'Bank Name',
            ),
            SizedBox(
              height: 20,
            ),
            InputTextBox(
              labeltext: 'Bank Account Number',
            ),
            SizedBox(
              height: 20,
            ),
            InputTextBox(
              labeltext: 'Bank Routing Number',
            ),
          ],
        ),
      ),
    );
  }
}
