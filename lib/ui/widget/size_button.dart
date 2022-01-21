import 'package:flutter/material.dart';

class SizeButton extends StatelessWidget {
  final String text;
  final String color;
  SizeButton(this.text, this.color);
  @override
  Widget build(BuildContext context) {
    String codeWarna;
    if (color == '') {
      codeWarna = '0xFFE19E05';
    } else {
      codeWarna = '0xFF$color';
    }

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                color: Color(int.parse(codeWarna)),
                borderRadius: BorderRadius.circular(10)),
            child: Center(child: Text(text))),
      ),
    );
  }
}
