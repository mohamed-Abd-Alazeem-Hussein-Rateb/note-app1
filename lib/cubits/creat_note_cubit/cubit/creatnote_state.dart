part of 'creatnote_cubit.dart';

@immutable
sealed class CreatnoteState {}

final class CreatnoteInitial extends CreatnoteState {}
final class CreatnoteLoading extends CreatnoteState {}
final class CreatnoteSucess extends CreatnoteState {}
final class CreatnoteError extends CreatnoteState {

  final String error;
  CreatnoteError(this.error);
}