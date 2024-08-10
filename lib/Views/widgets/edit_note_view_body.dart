import 'package:flutter/material.dart';
import 'package:notes/Views/widgets/custom_app_bar.dart';
import 'package:notes/Views/widgets/custom_button.dart';
import 'package:notes/Views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.edit,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Edit Note',
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
          CustomButton(
            text: 'Save Edit',
          )
        ],
      ),
    );
  }
}
