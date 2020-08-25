import 'package:flutter/material.dart';
import 'package:seller_panel/widgets/discount_drop_down.dart';
import 'package:seller_panel/widgets/price_input.dart';
import 'package:seller_panel/widgets/input_text_box.dart';
import 'package:seller_panel/widgets/tax_drop_down.dart';

class PriceSection extends StatelessWidget {
  const PriceSection({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.84,
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
              labeltext: 'Unit Price',
            ),
            SizedBox(
              height: 20,
            ),
            InputTextBox(
              labeltext: 'Purchase Price',
            ),
            SizedBox(
              height: 20,
            ),
            TaxInput(),
            SizedBox(
              height: 20,
            ),
            DiscountInput(),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                PriceInputTextBox(
                  labeltext: 'Varient',
                ),
                SizedBox(
                  width: 19,
                ),
                PriceInputTextBox(
                  labeltext: 'Varient Price',
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                PriceInputTextBox(
                  labeltext: 'SKU',
                ),
                SizedBox(
                  width: 19,
                ),
                PriceInputTextBox(
                  labeltext: 'Quanitity',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
