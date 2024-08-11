part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInital extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSuccess extends NotesState {}

class NotesFailure extends NotesState {
  final String errMessage;
  NotesFailure(this.errMessage);
}
