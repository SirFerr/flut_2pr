import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Студенческая информация',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Информация о студенте'),
      ),
      body: const Center(
        child: StudentInfo(),
      ),
    );
  }
}

class StudentInfo extends StatelessWidget {
  const StudentInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String fullName = 'Шилло Сергей Олегович';
    final String groupNumber = 'Группа: ИКБО-25-21';
    final String studentId = 'Студенческий: 21И0955';

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          fullName,
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 10),
        Text(
          groupNumber,
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 10),
        Text(
          studentId,
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
