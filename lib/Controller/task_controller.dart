import 'package:get/get.dart';
import '../Model/task_model.dart';

class TaskController extends GetxController {
  var tasks = <Task>[].obs;

  void addTask(String title) {
    tasks.add(Task(title: title));
  }

  void toggleTaskCompletion(int index) {
    tasks[index].isCompleted = !tasks[index].isCompleted;
    tasks.refresh();
  }
}
