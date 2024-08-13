part of 'addnote_cubit.dart';

@immutable
sealed class AddnoteState {}

final class AddnoteInitial extends AddnoteState {}

 final class AddNoteLoading extends AddnoteState {}
 final class AddnoteSucess extends  AddnoteState {}
 final class AddnoteError extends AddnoteState {
  final String errorrmassge;

  AddnoteError({required this.errorrmassge});
 }
