import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:seller_panel/widgets/constants.dart';

class ImageUpload extends StatefulWidget {
  @override
  _ImageUploadState createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickedFile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        GestureDetector(
          onTap: getImage,
          child: Container(
            width: size.width * 0.4,
            height: size.height * 0.2,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFB2B2B2),
                width: 1.0,
              ),
            ),
            child: _image == null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RotatedBox(
                        quarterTurns: 1,
                        child: Icon(Icons.attach_file),
                      ),
                      Text(
                        'Upload image',
                        style: kCommonTextStyle,
                      ),
                    ],
                  )
                : Image.file(
                    _image,
                    fit: BoxFit.fill,
                  ),
          ),
        ),
      ],
    );
  }
}
