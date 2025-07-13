import 'package:flutter/material.dart';
import 'package:notesapp/widgets/note_item_wdget.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return NotesCard();
      },
    );
  }
}
