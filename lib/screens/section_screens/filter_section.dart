import 'package:flutter/material.dart';
import 'package:seller_panel/widgets/drop_down_menu.dart';

class FilterSection extends StatelessWidget {
  const FilterSection({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.45,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Column(
          children: [
            DropDownMenu(
              labelText: 'Colors',
            ),
            SizedBox(
              height: 20,
            ),
            DropDownMenu(
              labelText: 'Filters',
            ),
            SizedBox(
              height: 20,
            ),
            DropDownMenu(
              labelText: 'Filter Value',
            ),
          ],
        ),
      ),
    );
  }
}
