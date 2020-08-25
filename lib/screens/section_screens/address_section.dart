import 'package:flutter/material.dart';
import 'package:seller_panel/widgets/drop_down_menu.dart';
import 'package:seller_panel/widgets/input_text_box.dart';

class AddressSection extends StatelessWidget {
  const AddressSection({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.62,
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
              labeltext: 'Address',
            ),
            SizedBox(
              height: 20,
            ),
            DropDownMenu(
              labelText: 'Country',
            ),
            SizedBox(
              height: 20,
            ),
            InputTextBox(
              labeltext: 'City',
            ),
            SizedBox(
              height: 20,
            ),
            InputTextBox(
              labeltext: 'Postal code',
            ),
            SizedBox(
              height: 20,
            ),
            InputTextBox(
              labeltext: 'Phone',
            ),
          ],
        ),
      ),
    );
  }
}
