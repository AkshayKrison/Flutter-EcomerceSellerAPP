import 'package:flutter/material.dart';

class TextArea extends StatefulWidget {
  @override
  _TextAreaState createState() => _TextAreaState();
}

class _TextAreaState extends State<TextArea> {
  double _inputHeight = 50;
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _textEditingController.addListener(_checkInputHeight);
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void _checkInputHeight() async {
    int count = _textEditingController.text.split('\n').length;

    if (count == 0 && _inputHeight == 50.0) {
      return;
    }
    if (count <= 5) {
      // use a maximum height of 6 rows
      // height values can be adapted based on the font size
      var newHeight = count == 0 ? 50.0 : 28.0 + (count * 18.0);
      setState(() {
        _inputHeight = newHeight;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textEditingController,
      textInputAction: TextInputAction.newline,
      keyboardType: TextInputType.multiline,
      maxLines: null,
    );
  }
}
