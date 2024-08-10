import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.white,
      decoration: InputDecoration(
          border: buildborder(),
          enabledBorder: buildborder(),
          hintText: 'Title',
          hintStyle: TextStyle(color: Colors.white)),
    );
  }

  OutlineInputBorder buildborder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      );
}
