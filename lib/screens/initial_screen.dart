import '../components/task.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacity = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.add_task),
        title: Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacity ? 1 : 0,
        duration: Duration(milliseconds: 800),
        child: ListView(
          children: [
            Task(name: 'Andar de bicileta sozinho', difficulty: 3),
            Task(name: 'Andar de moto', difficulty: 2),
            Task(name: 'Andar de carro', difficulty: 4),
            Task(name: 'Andar de carro', difficulty: 3),
            Task(name: 'Andar de carro', difficulty: 5),
            SizedBox(height: 50)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.remove_red_eye),
          onPressed: () {
            setState(() {
              opacity = !opacity;
            });
          }),
    );
  }
}
