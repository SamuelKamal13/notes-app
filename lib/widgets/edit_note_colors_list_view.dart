import 'package:flutter/material.dart';
import 'package:notesapp/constant.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/color_list_view.dart';

class EditNoteColorPicker extends StatefulWidget {
  const EditNoteColorPicker({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteColorPicker> createState() => _EditNoteColorPickerState();
}

class _EditNoteColorPickerState extends State<EditNoteColorPicker> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColors.indexWhere(
      (color) => color.toARGB32() == widget.note.color,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              widget.note.color = kColors[index].toARGB32();
              setState(() {});
            },
            child: ColorItem(
              isActive: currentIndex == index,
              color: kColors[index],
            ),
          );
        },
      ),
    );
  }
}
