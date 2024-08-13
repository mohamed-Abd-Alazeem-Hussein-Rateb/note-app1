import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_note_cubit/addnote_cubit.dart';
import 'package:notes/widgets/add_valdite_bottom_sheet.dart';

class NoteBottomSheet extends StatelessWidget {
  const NoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
      child: SingleChildScrollView(
        child: BlocConsumer<AddnoteCubit, AddnoteState>(
          listener: (context, state) {
            if (state is AddNoteLoading) {
              const Center(child: CircularProgressIndicator());
            }
            if (state is AddnoteSucess) {
              Navigator.pop(context);
            }
            if (state is AddnoteError) {
              print('falied ${state.errMassge}');
            }
          },
          builder: (context, state) {
            return const AddValditeBotttomSheet();
          },
        ),
      ),
    );
  }
}
