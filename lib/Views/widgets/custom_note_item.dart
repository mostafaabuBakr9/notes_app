import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/Models/note_model.dart';
import 'package:notes/Views/edit_notes_view.dart';

class CustomNoteItem extends StatelessWidget {
  CustomNoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNotesView();
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
