import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note/constant.dart';
import 'package:note/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  fetshAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBos);
    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }
}
