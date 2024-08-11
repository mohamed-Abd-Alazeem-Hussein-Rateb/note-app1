import 'package:flutter/material.dart';
import 'package:notes/widgets/custom+text_field.dart';

class NoteBottomSheet extends StatelessWidget {
  const NoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
      child: Column(
        children: [
         
          CustomTextField(
            hint: 'Title',
          ),
          SizedBox(height: 18,),
          CustomTextField(
            hint: 'descrbtion',
            maxline: 6,
          )
        ],
      ),
    );
    
  }
}