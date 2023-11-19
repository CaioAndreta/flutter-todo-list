import 'package:flutter/material.dart';
import 'package:todo_list/tarefa.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(widget.title),
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: ListView(
          children: <Widget>[
            Tarefa(
              titulo: 'checar e-mail',
              finalizado: true,
            ),
            Tarefa(
              titulo: 'lavar roupa',
              finalizado: false,
            ),
            Tarefa(
              titulo: 'fazer comida',
              finalizado: true,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}