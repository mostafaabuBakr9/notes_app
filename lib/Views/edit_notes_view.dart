import 'package:flutter/material.dart';
import 'package:notes/Models/note_model.dart';
import 'package:notes/Views/widgets/edit_note_view_body.dart';

class EditNotesView extends StatelessWidget {
  EditNotesView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: EditNoteViewBody(
      note: note,
    ));
  }
}
