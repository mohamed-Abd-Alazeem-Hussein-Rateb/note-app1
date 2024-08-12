import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes/widgets/custom_text_field.dart';
import 'package:notes/widgets/custom_bottom.dart';

class NoteBottomSheet extends StatelessWidget {
  const NoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
           SizedBox(height: 15,),
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(height: 18,),
            CustomTextField(
              hint: 'content',
              maxline: 6,
            ),
        
            SizedBox(height: 22,),
            CustomBottom(),
            SizedBox(height: 22,),
          ],
        ),
      ),
    );
    
  }
}

