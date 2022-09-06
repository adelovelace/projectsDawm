import 'package:get/get.dart';
import 'package:myorganizer/app/screens/notes/notes_model.dart';
import 'package:myorganizer/http_service.dart';

class NotesController extends GetxController {
  var notes = <Note>[].obs;

  final service = HttpService();

  @override
  void onInit() {
    getNotesCtrl();
    super.onInit();
  }

  getNotesCtrl() async {
    var result = await service.getNote();
    notes.addAll(result);
  }

  static obx() {}
}
