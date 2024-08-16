import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_note_cubit/addnote_cubit.dart';
import 'package:notes/cubits/creat_note_cubit/cubit/creatnote_cubit.dart';
import 'package:notes/widgets/add_valdite_bottom_sheet.dart';

class NoteBottomSheet extends StatelessWidget {
  const NoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddnoteCubit(),
      child: Padding(
        padding: EdgeInsets.only(left: 13,right: 13,top: 12,
        bottom: MediaQuery.of(context).viewInsets.bottom),
        
        

          child: BlocConsumer<AddnoteCubit, AddnoteState>(
            listener: (context, state) {
              if (state is AddNoteLoading) {
                const Center(child: CircularProgressIndicator(
                  strokeWidth: 5,
                  strokeAlign: BorderSide.strokeAlignCenter,
                ));
              }
              if (state is AddnoteSucess) {
                Navigator.pop(context);
                BlocProvider.of<CreatnoteCubit>(context).creatNote();
              }
              if (state is AddnoteError) {
                print('falied ${state.errMassge}');
              }
            },
            builder: (context, state) {
              return  AbsorbPointer(
                absorbing: state is AddNoteLoading ? true : false,//to make the ui unable to interact with the user
                child:const SingleChildScrollView(child:   AddValditeBotttomSheet()));
            },
          ),
        
      ),
    );
  }
}
