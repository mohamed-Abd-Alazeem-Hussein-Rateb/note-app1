import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/creat_note_cubit/cubit/creatnote_cubit.dart';
import 'package:notes/models/note_modle.dart';
import 'package:notes/views/edit_note_view.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.noteModle});

  final NoteModle noteModle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Dismissible(
        key: Key(noteModle.id),  // استخدم المعرف الفريد هنا
        onDismissed: (direction) {
          noteModle.delete();
          BlocProvider.of<CreatnoteCubit>(context).creatNote();
        },
        background: Container(
          color: Colors.red,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const Icon(Icons.delete, color: Colors.white),
        ),
        secondaryBackground: Container(
          color: Colors.red,
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const Icon(Icons.delete, color: Colors.white),
        ),
        child: Card(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      noteModle.title,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        noteModle.delete();
                        BlocProvider.of<CreatnoteCubit>(context).creatNote();
                      },
                      child: const Icon(
                        Icons.delete,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  noteModle.content,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    noteModle.data,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}