import 'package:flutter/material.dart';
import 'package:note/views/widgets/custom_buttom.dart';
import 'custom_text_feild.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextFeild(
              hint: 'Title',
            ),
            SizedBox(
              height: 12,
            ),
            CustomTextFeild(
              hint: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 32,
            ),
            CustomButtom(),
            SizedBox(
              height: 24,
            )
          ],
        ),
      ),
    );
  }
}
