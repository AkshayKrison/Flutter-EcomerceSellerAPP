import 'package:flutter/material.dart';

import 'constants.dart';

class PiadUnpaid extends StatelessWidget {
  final status;
  final colour;
  const PiadUnpaid({
    Key key,
    this.status,
    this.colour,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 17.81,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: colour,
          width: 1,
        ),
      ),
      child: Center(
        child: Text(
          status,
          style: kCommonTextStyle.copyWith(color: colour),
        ),
      ),
    );
  }
}
