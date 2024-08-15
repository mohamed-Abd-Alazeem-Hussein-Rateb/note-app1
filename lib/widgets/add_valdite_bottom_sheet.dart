import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_note_cubit/addnote_cubit.dart';
import 'package:notes/models/note_modle.dart';
import 'package:notes/widgets/custom_bottom.dart';
import 'package:notes/widgets/custom_text_field.dart';

class AddValditeBotttomSheet extends StatefulWidget {
  const AddValditeBotttomSheet({
    super.key,
  });

  @override
  State<AddValditeBotttomSheet> createState() => _AddValditeBotttomSheetState();
}

class _AddValditeBotttomSheetState extends State<AddValditeBotttomSheet> {
  final GlobalKey<FormState> fromkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: fromkey,
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 18,
          ),
          CustomTextField(
            
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'content',
            maxline: 6,
          ),
          const SizedBox(
            height: 22,
          ),
         BlocBuilder<AddnoteCubit, AddnoteState>(
          builder: (context, state) {
           return  CustomBottom(
            isloading: state is AddNoteLoading ? true : false,
            onTap: () {
              if (fromkey.currentState!.validate()) {
                fromkey.currentState!.save();
                var noteModle = NoteModle(
                    title: title!,
                    content: subTitle!,
                    data: DateTime.now().toString(),
                    color: Colors.blue.value);
                    
                BlocProvider.of<AddnoteCubit>(context).addNote(noteModle);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          );
         }),
          const SizedBox(
            height: 22,
          ),
        ],
      ),
    );
  }
}
