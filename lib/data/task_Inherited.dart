// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '../components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Task> taskList = [
    Task('Aprender Flutter', 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png', 3),
    Task('Andar de Bike', 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png', 2),
    Task('Meditar', 'https://blog.logrocket.com/wp-content/uploads/2022/02/Best-IDEs-Flutter-2022.png', 5),
  ];

  void newTask(String name, String image,int difficulty){
    taskList.add(Task(name, image, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}