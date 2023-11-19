import 'package:flutter/material.dart';

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
            ),
            Tarefa(
              titulo: 'lavar roupa',
            ),
            Tarefa(
              titulo: 'fazer comida',
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

class Tarefa extends StatefulWidget {
  const Tarefa({super.key, required this.titulo});

  final String titulo;

  @override
  State<Tarefa> createState() => _TarefaState();
}

class _TarefaState extends State<Tarefa> {
  bool checkBoxValue = false;
  TextDecoration textDecoration = TextDecoration.none;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: CheckboxListTile(
        title: Text(widget.titulo, style: TextStyle(decoration: textDecoration)),
        value: checkBoxValue,
        onChanged: (bool? value) {
          setState(() {
            checkBoxValue = value!;
            textDecoration == TextDecoration.lineThrough
                ? textDecoration = TextDecoration.none
                : textDecoration = TextDecoration.lineThrough;
          });
        },
        tileColor: Colors.white,
        controlAffinity: ListTileControlAffinity.leading,
        secondary: GestureDetector(
          child: IconButton(
            icon: const Icon(Icons.delete_rounded),
            color: Colors.red,
            onPressed: () {},
          ),
        ),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
    );
  }
}
