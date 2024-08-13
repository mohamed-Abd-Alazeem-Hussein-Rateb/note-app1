import 'package:flutter/material.dart';
import 'package:notes/widgets/note_bottom_sheet.dart';
import 'package:notes/widgets/note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
            ),
            context: context, 
            builder: (context){
       return const NoteBottomSheet();
          }
          );
        },
        child: const Icon(Icons.add), 
      ),
      body:const NoteViewBody(),
    );
  }
}