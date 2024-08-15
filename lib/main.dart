import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/bloc_observer.dart';
import 'package:notes/models/note_modle.dart';
import 'package:notes/views/notes_app.dart';
import 'package:notes/widgets/constant.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();

  // Register the adapter first
  Hive.registerAdapter(NoteModleAdapter());

  // Then open the box
  await Hive.openBox<NoteModle>(kNotesBox);

  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
        ),
        debugShowCheckedModeBanner: false,
        home: const NoteView(),
      );
  }
}
