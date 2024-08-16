import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes/constant.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInital());

  dynamic? notes;
  var notesBox = Hive.box<dynamic>(kNotesBox);

  fetchAllNotes() async {
    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }
}
