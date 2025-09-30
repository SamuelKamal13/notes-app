import 'package:flutter/material.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/widgets/add_note_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNewNote extends StatelessWidget {
  const AddNewNote({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              debugPrint(state.errorMessage);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.errorMessage),
                  backgroundColor: Colors.red,
                ),
              );
            }

            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            if (state is AddNoteLoading) {
              return AbsorbPointer(absorbing: true);
            }
            return SingleChildScrollView(child: const FormWidget());
          },
        ),
      ),
    );
  }
}
