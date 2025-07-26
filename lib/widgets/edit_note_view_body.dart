import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: const [
          CustomAppBar(title: "Edit Note", icon: Icons.check),
          SizedBox(height: 32),
          CustomTextField(hintText: "title"),
          SizedBox(height: 16),
          CustomTextField(hintText: "content", maxLines: 5),
        ],
      ),
    );
  }
}
