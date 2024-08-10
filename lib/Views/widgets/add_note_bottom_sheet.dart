import 'package:flutter/material.dart';
import 'package:notes/Views/widgets/custom_button.dart';
import 'package:notes/Views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Add New Note',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            CustomTextField(
              hint: 'Title',
              maxlines: 1,
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              hint: 'Content',
              maxlines: 5,
            ),
            SizedBox(
              height: 10,
            ),
            CustomButton()
          ],
        ),
      ),
    );
  }
}
