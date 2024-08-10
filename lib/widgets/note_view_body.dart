import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_card.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
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
          CustomCard(),
        ],
      ),
    );
  }
}
