import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.hint,
      required this.maxlines,
      this.onSaved,
      this.onChanged});
  String hint;
  int maxlines;
  void Function(String?)? onSaved;
  void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field Is Requird';
        }
      },
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
