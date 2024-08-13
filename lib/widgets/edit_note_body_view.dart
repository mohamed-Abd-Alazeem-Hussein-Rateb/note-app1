import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_text_field.dart';

class EditNoteBodyView extends StatelessWidget {
  const EditNoteBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
      child:  Column(
        children: [
          Row(
            children: [
              const Text(
                  'Note',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
                ),
              const  Spacer(),
                Container(
                  padding:const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(18),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child:const Icon(
                    Icons.check,
                    size: 30,
                  ),
                ),
            ],
          ),
        const  SizedBox(
            height: 22,
          ),
         const CustomTextField(
            hint: 'Title',
          ),
          const  SizedBox(
            height: 32,
          ),
         const CustomTextField(
            hint: 'content',
            maxline: 6,
          ),
          Image.asset('assets/beatfil.jpg')
        ],
      ),
    );
  }
}