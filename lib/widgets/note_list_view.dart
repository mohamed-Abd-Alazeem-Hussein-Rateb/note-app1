import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_card.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 9,
      itemBuilder: (context, index) {
      return  Padding(
        padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 11.0),
        child:  CustomCard(
          color:  Colors.orange.withOpacity(0.9),
          title: 'Note 1',
          description: 'hello world i, am note 1 description',
          date: 'Date 1',
        ),
      );
    }
    );
  }
}