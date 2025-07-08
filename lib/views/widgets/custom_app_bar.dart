import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Notes", style: TextStyle(fontSize: 24)),
        const CustomSearchIcon(),
      ],
    );
  }
}
