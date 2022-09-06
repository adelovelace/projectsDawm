import 'dart:convert';

import 'package:get/get_connect.dart';
import 'package:myorganizer/app/screens/notes/notes_model.dart';

class HttpService extends GetConnect {
  final String noteURL =
      "https://notes-362db-default-rtdb.firebaseio.com/collection";

  Future<dynamic> getNote() async {
    final response = await get(noteURL);
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      List<dynamic> body = jsonDecode(response.body);

      List<Note> notes = body
          .map(
            (dynamic item) => Note.fromJson(item),
          )
          .toList();
      return notes;
    }
  }
}
