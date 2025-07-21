import 'package:flutter/material.dart';
import 'package:notesapp/constant.dart';
import 'package:notesapp/widgets/custom_button.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class AddNewNote extends StatelessWidget {
  const AddNewNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextField(hintText: 'Title'),
            SizedBox(height: 16),
            CustomTextField(hintText: 'Content', maxLines: 5),
            SizedBox(height: 60),
            CustomButton(),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}