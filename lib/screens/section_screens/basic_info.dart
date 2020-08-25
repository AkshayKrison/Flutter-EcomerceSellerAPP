import 'package:flutter/material.dart';
import 'package:seller_panel/widgets/constants.dart';
import 'package:seller_panel/widgets/image_upload.dart';
import 'package:seller_panel/widgets/input_text_box.dart';

class BasicInfo extends StatelessWidget {
  const BasicInfo({
    Key key,
    @required this.maxSize,
  }) : super(key: key);

  final Size maxSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: maxSize.width,
      height: maxSize.height * 0.8,
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
              labeltext: 'Your Name',
            ),
            SizedBox(
              height: 20,
            ),
            InputTextBox(
              labeltext: 'Your Email',
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: maxSize.height * 0.01),
                  child: Text(
                    'Profile Picture *',
                    style: kProductAddText,
                  ),
                ),
                ImageUpload(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InputTextBox(
              labeltext: 'Your Password',
            ),
            SizedBox(
              height: 20,
            ),
            InputTextBox(
              labeltext: 'Confirm Password',
            ),
          ],
        ),
      ),
    );
  }
}
