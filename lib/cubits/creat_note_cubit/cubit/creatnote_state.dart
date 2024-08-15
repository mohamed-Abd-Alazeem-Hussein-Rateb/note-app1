part of 'creatnote_cubit.dart';

@immutable
sealed class CreatnoteState {}

final class CreatnoteInitial extends CreatnoteState {}
final class CreatnoteLoading extends CreatnoteState {}
final class CreatNoteSucess extends CreatnoteState {
  final List<NoteModle> notes;

  CreatNoteSucess( this.notes);
}
final class CreatnoteError extends CreatnoteState {

  final String error;
  CreatnoteError({required this.error});
}