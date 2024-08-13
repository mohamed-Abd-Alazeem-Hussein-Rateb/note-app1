import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/views/notes_app.dart';
import 'package:notes/widgets/constant.dart';

void main()async {
  await Hive.initFlutter();
 await Hive.openBox(kNotesBox);
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
      home:  const NoteView(),
    );
  }
}