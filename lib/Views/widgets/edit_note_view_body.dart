import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/Models/note_model.dart';
import 'package:notes/Views/widgets/custom_app_bar.dart';
import 'package:notes/Views/widgets/custom_button.dart';
import 'package:notes/Views/widgets/custom_text_field.dart';
import 'package:notes/cubits/note_cubit/notes_cubit.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  @override
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.edit,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Edit Note',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hint: widget.note.title,
            maxlines: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hint: widget.note.subtile,
            maxlines: 5,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
            text: 'Save Edit',
            onTap: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtile = content ?? widget.note.subtile;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
