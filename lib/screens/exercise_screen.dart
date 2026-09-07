import 'package:flutter/material.dart';

class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({super.key});

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
