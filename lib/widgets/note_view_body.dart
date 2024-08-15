import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/creat_note_cubit/cubit/creatnote_cubit.dart';
import 'package:notes/widgets/note_list_view.dart';

class NoteViewBody extends StatefulWidget {
  const NoteViewBody({super.key});

  @override
  _NoteViewBodyState createState() => _NoteViewBodyState();
}

class _NoteViewBodyState extends State<NoteViewBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CreatnoteCubit>(context).creatNote();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 36, horizontal: 15),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Note',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Icon(
                Icons.search,
                size: 30,
              ),
            ],
          ),
          SizedBox(height: 14),
          Expanded(child: NoteListView()),
        ],
      ),
    );
  }
}

