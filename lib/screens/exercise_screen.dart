import 'package:flutter/material.dart';
import 'package:gymapp/models/exercise_model.dart';
import 'package:gymapp/models/feeling_model.dart';

class ExerciseScreen extends StatelessWidget {
  ExerciseScreen({super.key});

  final ExerciseModel exerciseModel = ExerciseModel(
    id: '001',
    name: 'Remada baixa',
    howToDo: 'Faz legal dog',
    title: 'Treino A',
  );

  final List<FeelingModel> feelingList = [
    FeelingModel(id: '001', feeling: 'Pouca ativação hoje', date: '2026-02-17'),
    FeelingModel(id: '002', feeling: 'Ativou legal', date: '2026-02-19'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Puxada alta pronada')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('clicou');
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(onPressed: () {}, child: Text('Enviar foto')),
            Text(
              'Como fazer?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              'Segura com as duas mãos na barra, mantém a coluna reta e puxa',
            ),
            Divider(),
            Text(
              'Como estou me sentindo?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text('Senti bastante ativação hoje'),
          ],
        ),
      ),
    );
  }
}
