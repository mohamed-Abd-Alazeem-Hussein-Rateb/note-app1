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
        child: AddValditeBotttomSheet(),
      ),
    );
    
  }
}




class AddValditeBotttomSheet extends StatefulWidget {
  const AddValditeBotttomSheet({
    super.key,
  });

  @override
  State<AddValditeBotttomSheet> createState() => _AddValditeBotttomSheetState();
}

class _AddValditeBotttomSheetState extends State<AddValditeBotttomSheet> {
  final GlobalKey<FormState> fromkey =GlobalKey();
  AutovalidateMode autovalidateMode =AutovalidateMode.disabled;
  String?title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: fromkey,
      child: Column(
        children: [
        const SizedBox(height: 15,),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
        const  SizedBox(height: 18,),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'content',
            maxline: 6,
          ),
      
        const  SizedBox(height: 22,),
          CustomBottom(
            onTap: () {
              if (fromkey.currentState!.validate()) {
                fromkey.currentState!.save();
              }else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
         const SizedBox(height: 22,),
        ],
      ),
    );
  }
}

