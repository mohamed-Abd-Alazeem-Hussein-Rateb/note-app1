import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'creatnote_state.dart';

class CreatnoteCubit extends Cubit<CreatnoteState> {
  CreatnoteCubit() : super(CreatnoteInitial());

  
}
