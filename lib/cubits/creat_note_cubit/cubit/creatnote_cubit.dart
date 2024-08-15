import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes/models/note_modle.dart';
import 'package:notes/widgets/constant.dart';

part 'creatnote_state.dart';

class CreatnoteCubit extends Cubit<CreatnoteState> {
  CreatnoteCubit() : super(CreatnoteInitial());

  void creatNote() async {
    debugPrint('creatNote called'); // رسالة تصحيح للتأكد من استدعاء الوظيفة
    try {
      var noteBox = Hive.box<NoteModle>(kNotesBox);
      List<NoteModle> notes = noteBox.values.toList();
      emit(CreatNoteSucess(notes));
    } catch (e) {
      debugPrint('Error in creatNote: $e'); // رسالة تصحيح عند حدوث خطأ
      emit(CreatnoteError(error: e.toString()));
    }
  }
}

