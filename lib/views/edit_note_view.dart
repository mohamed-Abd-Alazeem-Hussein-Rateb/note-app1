import 'package:flutter/material.dart';
import 'package:notes/widgets/editbodyview.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteBodyView(),
    );
  }
}