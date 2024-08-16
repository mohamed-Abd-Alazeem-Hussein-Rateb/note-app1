import 'package:flutter/material.dart';
import 'package:notes/models/note_modle.dart';
import 'package:notes/widgets/edit_note_body_view.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
 final NoteModle note;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: EditNoteBodyView(note:note,),
    );
  }
}