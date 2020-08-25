import 'package:flutter/material.dart';

import 'constants.dart';

class PageHeader extends StatelessWidget {
  final pageheader;
  const PageHeader({
    Key key,
    this.pageheader,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 16.0, left: 23.0),
          child: Text(
            pageheader,
            style: kBoldedText.copyWith(
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
