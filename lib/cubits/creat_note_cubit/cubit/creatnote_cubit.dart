import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes/models/note_modle.dart';
import 'package:notes/widgets/constant.dart';

part 'creatnote_state.dart';

class CreatnoteCubit extends Cubit<CreatnoteState> {
  CreatnoteCubit() : super(CreatnoteInitial());
    
    creatNote() async{
    try {
  var noteBox = Hive.box<NoteModle>(kNotesBox);
  List<NoteModle> notes = [];
  notes =noteBox.values.toList();
    emit(CreatnoteLoading());
}  catch (e) {
  emit(CreatnoteError(error:e.toString()));
}
  }
  
}
