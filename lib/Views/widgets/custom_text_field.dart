import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.hint, required this.maxlines});
  String hint;
  int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      maxLines: maxlines,
      decoration: InputDecoration(
          border: buildborder(),
          enabledBorder: buildborder(),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.white)),
    );
  }

  OutlineInputBorder buildborder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      );
}
