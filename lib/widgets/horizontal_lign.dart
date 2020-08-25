import 'package:flutter/material.dart';

class HorizontalLign extends StatelessWidget {
  const HorizontalLign({
    Key key,
    @required this.lwidth,
  }) : super(key: key);

  final double lwidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: 1.0,
        width: lwidth,
        color: Colors.grey[200],
      ),
    );
  }
}
