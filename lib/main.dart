import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/bloc_observer.dart';
import 'package:notes/cubits/add_note_cubit/addnote_cubit.dart';
import 'package:notes/models/note_modle.dart';
import 'package:notes/views/notes_app.dart';
import 'package:notes/widgets/constant.dart';

void main()async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
 await Hive.openBox(kNotesBox);
 Hive.registerAdapter(NoteModleAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> AddnoteCubit()),
      ],
      child: MaterialApp(
        theme: ThemeData(
           brightness: Brightness.dark,
        ),
        debugShowCheckedModeBanner: false,
        home:  const NoteView(),
      ),
    );
  }
}