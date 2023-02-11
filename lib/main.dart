import 'package:flutter/material.dart';
import 'package:new_first_project/data/task_Inherited.dart';
import 'package:new_first_project/screens/initial_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TaskInherited(child: InitialScreen()),
    );
  }
}
