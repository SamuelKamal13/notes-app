import 'package:flutter/material.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/note_item_wdget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            padding: const EdgeInsets.only(top: 0),
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return NotesCard(note: notes[index]);
            },
          ),
        );
      },
    );
  }
}
