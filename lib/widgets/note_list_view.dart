import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/creat_note_cubit/cubit/creatnote_cubit.dart';
import 'package:notes/widgets/custom_card.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreatnoteCubit, CreatnoteState>(
      builder: (context, state) {
        if (state is CreatNoteSucess) {
          return ListView.builder(
            itemCount: state.notes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 11.0),
                child: CustomCard(
                  color: Colors.orange.withOpacity(0.9),
                  title: state.notes[index].title, // يمكنك استخدام البيانات من state هنا
                  description: state.notes[index].content, // يمكنك استخدام البيانات من state هنا
                  date: state.notes[index].data, // يمكنك استخدام البيانات من state هنا
                ),
              );
            },
          );
        } else if (state is CreatnoteLoading) {
          return const Center(child: CircularProgressIndicator()); // عرض مؤشر التحميل
        } else {
          return const Center(child: Text('No notes available')); // رسالة عند عدم وجود بيانات
        }
      },
    );
  }
}
