import 'package:flutter/material.dart';
import 'constants.dart';

class DiscountInput extends StatefulWidget {
  @override
  _DiscountInputState createState() => _DiscountInputState();
}

class _DiscountInputState extends State<DiscountInput> {
  List<String> category = ['Rs.', 'INR.'];
  String selectedCategory;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tax Amount',
              style: kProductAddText,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.59,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: TextFormField(
                    enableSuggestions: true,
                    decoration: InputDecoration(
                      hintText: 'Discount Amount',
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
                    keyboardType: TextInputType.text,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.height * 0.06,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: DropdownButton(
                      icon: Icon(Icons.arrow_drop_down),
                      value: selectedCategory,
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
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
