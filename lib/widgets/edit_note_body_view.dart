import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/creat_note_cubit/cubit/creatnote_cubit.dart';
import 'package:notes/models/note_modle.dart';
import 'package:notes/widgets/custom_text_field.dart';

class EditNoteBodyView extends StatefulWidget {
  const EditNoteBodyView({super.key, required this.note,});
 final NoteModle note;

  @override
  State<EditNoteBodyView> createState() => _EditNoteBodyViewState();
}

class _EditNoteBodyViewState extends State<EditNoteBodyView> {
  
  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 38,horizontal: 15),
      child:  Column(
        children: [
          Row(
            children: [
              const Text(
                  'Note',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white),
                ),
              const  Spacer(),
                InkWell(
                  onTap: () {
                    widget.note.title = title ?? widget.note.title;
                    widget.note.content = subTitle ?? widget.note.content;
                    widget.note.save();
                    BlocProvider.of<CreatnoteCubit>(context).creatNote();
                    Navigator.pop(context);
                  },
                  child: Container(
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
                ),
            ],
          ),
        const  SizedBox(
            height: 22,
          ),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hint: widget.note.title,
          ),
          const  SizedBox(
            height: 32,
          ),
          CustomTextField(
            onChanged: (value) {
              subTitle = value;
            },
            hint: widget.note.content,
            maxline: 6,
          ),
        ],
      ),
    );
  }
}