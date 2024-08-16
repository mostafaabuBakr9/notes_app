import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes/Models/note_model.dart';
import 'package:notes/Views/widgets/custom_button.dart';
import 'package:notes/Views/widgets/custom_text_field.dart';
import 'package:notes/cubits/add_note_cubit/add_note_cubit.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Add New Note',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextField(
            hint: 'Title',
            maxlines: 1,
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
              hint: 'Content',
              maxlines: 5,
              onSaved: (value) {
                subtitle = value;
              }),
          const SizedBox(
            height: 10,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                text: 'Save Note',
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDate = DateTime.now();
                    var formattedCurrentDate =
                        DateFormat('yyyy-mm-dd').format(currentDate);
                    var notemodel = NoteModel(
                        title: title!,
                        subtile: subtitle!,
                        date: formattedCurrentDate);
                    BlocProvider.of<AddNoteCubit>(context).addNote(notemodel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          )
        ],
      ),
    );
  }
}
