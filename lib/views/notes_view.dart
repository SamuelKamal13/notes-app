import 'package:flutter/material.dart';
import 'package:notesapp/widgets/add_new_note.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/notes_view_list.dart';
import 'package:notesapp/widgets/search_notes_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            backgroundColor: Colors.transparent,
            builder: (context) {
              return const AddNewNote();
            },
          );
        },
        icon: const Icon(Icons.add_rounded, size: 24),
        label: const Text(
          'New Note',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
        elevation: 4,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
          child: Column(
            children: [
              CustomAppBar(
                title: 'My Notes',
                icon: Icons.search_rounded,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchNotesView(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 4),
              Expanded(child: const NotesListView()),
            ],
          ),
        ),
      ),
    );
  }
}
