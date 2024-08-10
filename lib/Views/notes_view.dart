import 'package:flutter/material.dart';
import 'package:notes/Views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container();
                });
          },
          child: Icon(Icons.add),
        ),
        body: const NotesViewBody());
  }
}
