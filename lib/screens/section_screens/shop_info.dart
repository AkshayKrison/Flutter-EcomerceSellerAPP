import 'package:flutter/material.dart';
import 'package:seller_panel/widgets/constants.dart';
import 'package:seller_panel/widgets/drop_down_menu.dart';
import 'package:seller_panel/widgets/image_upload.dart';
import 'package:seller_panel/widgets/input_text_box.dart';

class ShopInfo extends StatelessWidget {
  const ShopInfo({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.65,
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
              labeltext: 'Shop Name',
            ),
            SizedBox(
              height: 20,
            ),
            DropDownMenu(
              labelText: 'Pickup Points',
            ),
            SizedBox(
              height: 20,
            ),
            InputTextBox(
              labeltext: 'Address',
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: size.height * 0.01),
                  child: Text(
                    'Logos (120 x 120) *',
                    style: kProductAddText,
                  ),
                ),
                ImageUpload(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
