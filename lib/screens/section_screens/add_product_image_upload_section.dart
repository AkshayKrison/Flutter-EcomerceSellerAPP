import 'package:flutter/material.dart';
import 'package:seller_panel/widgets/constants.dart';
import 'package:seller_panel/widgets/image_upload.dart';

class ImageUploadSection extends StatelessWidget {
  const ImageUploadSection({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.8,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.07, bottom: size.height * 0.01),
                child: Text(
                  'Main Images *',
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
            ],
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.07, bottom: size.height * 0.02),
                child: Row(
                  children: [
                    Text(
                      'Thumbnail Image *',
                      style: kProductAddText,
                    ),
                    SizedBox(
                      width: size.width * 0.17,
                    ),
                    Text(
                      'Featured *',
                      style: kProductAddText,
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ImageUpload(),
                      ImageUpload(),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: size.width * 0.07, top: size.height * 0.01),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: size.height * 0.01,
                              bottom: size.height * 0.017),
                          child: Text('Pre-Booking *', style: kProductAddText),
                        ),
                        ImageUpload(),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
