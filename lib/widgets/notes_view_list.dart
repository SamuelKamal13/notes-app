import 'package:flutter/material.dart';
import 'package:notesapp/widgets/note_item_wdget.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 0),
        itemCount: 10,
        itemBuilder: (context, index) {
          return NotesCard();
        },
      ),
    );
  }
}
