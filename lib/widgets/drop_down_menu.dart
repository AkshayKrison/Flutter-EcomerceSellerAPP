import 'package:flutter/material.dart';
import 'package:seller_panel/widgets/constants.dart';

class DropDownMenu extends StatelessWidget {
  final labelText;

  const DropDownMenu({Key key, this.labelText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: kProductAddText,
        ),
        SizedBox(
          height: 10,
        ),
        DropDownData(),
      ],
    );
  }
}

class DropDownData extends StatefulWidget {
  @override
  _DropDownDataState createState() => _DropDownDataState();
}

class _DropDownDataState extends State<DropDownData> {
  List<String> category = ['A', 'B', 'C', 'D'];
  String selectedCategory;
  @override
  Widget build(BuildContext context) {
    Size maxSize = MediaQuery.of(context).size;
    return Container(
      width: MediaQuery.of(context).size.width * 0.86,
      height: MediaQuery.of(context).size.height * 0.06,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: maxSize.width * 0.04),
        child: DropdownButton(
          hint: Text(
            'Please Choose the One',
            style: kCommonTextStyle.copyWith(fontSize: 16),
          ),
          value: selectedCategory,
          icon: Padding(
            padding: EdgeInsets.only(left: maxSize.width * 0.25),
            child: Icon(Icons.arrow_drop_down),
          ),
          style: kCommonTextStyle,
          underline: Container(),
          onChanged: (newValue) {
            setState(() {
              selectedCategory = newValue;
            });
          },
          items: category.map(
            (category) {
              return DropdownMenuItem(
                child: Text(category),
                value: category,
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
