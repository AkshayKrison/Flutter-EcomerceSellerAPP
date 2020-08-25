import 'package:flutter/material.dart';
import 'package:seller_panel/widgets/constants.dart';
import 'package:seller_panel/widgets/image_upload.dart';

class SliderSettings extends StatelessWidget {
  const SliderSettings({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.51,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.07, bottom: size.height * 0.01),
              child: Text(
                'Slider Images *',
                style: kProductAddText,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ImageUpload(),
                ImageUpload(),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ImageUpload(),
                ImageUpload(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
