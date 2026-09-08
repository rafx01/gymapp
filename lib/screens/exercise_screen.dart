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
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text("${exerciseModel.name} - ${exerciseModel.title}"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('clicou');
        },
        child: Icon(Icons.add),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        margin: EdgeInsets.all(8),
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(
              height: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('Enviar foto')),
                  ElevatedButton(onPressed: () {}, child: Text('Tirar foto')),
                ],
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Como fazer?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 8),

            Text(exerciseModel.howToDo),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(color: Colors.black),
            ),
            Text(
              'Como estou me sentindo?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 8),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(feelingList.length, (index) {
                FeelingModel feelingrn = feelingList[index];
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(feelingrn.feeling),
                  subtitle: Text(feelingrn.date),
                  leading: Icon(Icons.double_arrow),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete, color: Colors.red),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
