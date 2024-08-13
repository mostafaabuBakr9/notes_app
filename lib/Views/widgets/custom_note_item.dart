import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/Models/note_model.dart';
import 'package:notes/Views/edit_notes_view.dart';
import 'package:notes/cubits/note_cubit/notes_cubit.dart';

class CustomNoteItem extends StatelessWidget {
  CustomNoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNotesView(
            note: note,
          );
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(bottom: 15, right: 24),
        decoration: BoxDecoration(
            color: Colors.blueAccent.withOpacity(0.8),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: TextStyle(fontSize: 26),
              ),
              subtitle: Text(note.subtile, style: TextStyle(fontSize: 20)),
              trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: Icon(
                    FontAwesomeIcons.trash,
                    // Icons.delete,
                    color: Colors.black,
                    size: 30,
                  )),
            ),
            Text(
              note.date,
              style: TextStyle(color: Colors.black, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
