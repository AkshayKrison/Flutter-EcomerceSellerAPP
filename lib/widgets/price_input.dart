import 'package:flutter/material.dart';
import 'constants.dart';

class PriceInputTextBox extends StatelessWidget {
  final String labeltext;
  final String keyboardType;

  PriceInputTextBox({
    this.labeltext,
    this.keyboardType,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labeltext,
          style: kProductAddText,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.06,
          child: TextFormField(
            enableSuggestions: true,
            decoration: InputDecoration(
              hintText: labeltext,
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFFD3D3D3),
                  width: 1.0,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.0),
                borderSide: BorderSide(
                  width: 1.0,
                ),
              ),
              //fillColor: Colors.green
            ),
            validator: (val) {
              if (val.length == 0) {
                return "$labeltext cannot be empty";
              } else {
                return null;
              }
            },
            keyboardType: TextInputType.text,
          ),
        ),
      ],
    );
  }
}
