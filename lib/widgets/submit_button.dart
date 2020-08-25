import 'package:flutter/material.dart';

import 'constants.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key key,
    @required this.size,
    this.title,
  }) : super(key: key);

  final Size size;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.08,
      color: Color(0xFF60AA87),
      child: Center(
        child: Text(
          title,
          style: kBoldedText.copyWith(color: Colors.white, fontSize: 12),
        ),
      ),
    );
  }
}
