import 'package:flutter/material.dart';
import 'package:note/constant.dart';
import 'package:note/models/note_model.dart';
import 'package:note/views/widgets/color_list_view.dart';

class EditColorsNote extends StatefulWidget {
  const EditColorsNote({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditColorsNote> createState() => _EditColorsNoteState();
}

class _EditColorsNoteState extends State<EditColorsNote> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = kColors.indexOf(Color(widget.note.color));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              widget.note.color = kColors[index].value;
              setState(() {});
            },
            child: ColorItem(
              color: kColors[index],
              isActive: currentIndex == index,
            ),
          );
        },
      ),
    );
  }
}
