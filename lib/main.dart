import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note/constant.dart';
import 'package:note/views/note_views.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBos);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Poppins",
      ),
      home: const NoteViews(),
    );
  }
}
