import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final color;
  final double width;
  final double height;
  final double radius;
  final double borderWidth;
  final borderColor;
  final textColor;
  final double textSize;
  final routeName;
  CustomButton({
    this.color,
    this.name,
    this.width,
    this.height,
    this.radius,
    this.borderWidth,
    this.borderColor,
    this.textColor,
    this.textSize,
    this.routeName,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Container(
        width: MediaQuery.of(context).size.width / width, //1.2
        height: MediaQuery.of(context).size.height / height, //15,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(
            width: borderWidth,
            color: borderColor,
          ),
        ),
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              color: textColor,
              fontSize: textSize,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
