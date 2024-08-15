import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes/models/note_modle.dart';
import 'package:notes/widgets/constant.dart';

part 'addnote_state.dart';

class AddnoteCubit extends Cubit<AddnoteState> {
  AddnoteCubit() : super(AddnoteInitial());
  
  addNote(NoteModle noteModle) async{
    emit(AddNoteLoading());
    try {
  var noteBox = Hive.box<NoteModle>(kNotesBox);
    await  noteBox.add(noteModle);
    emit(AddnoteSucess());
}  catch (e) {
  emit(AddnoteError(errMassge: e.toString()));
}
  }
}
