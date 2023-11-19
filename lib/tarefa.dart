import 'package:flutter/material.dart';

class Tarefa extends StatefulWidget {
  Tarefa({super.key, required this.titulo, required this.finalizado});

  final String titulo;
  bool finalizado;

  @override
  State<Tarefa> createState() => _TarefaState();
}

class _TarefaState extends State<Tarefa> {
  TextDecoration textDecoration = TextDecoration.none;
  @override
  Widget build(BuildContext context) {
    widget.finalizado == true ? textDecoration = TextDecoration.lineThrough : textDecoration = TextDecoration.none;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: CheckboxListTile(
        title: Text(widget.titulo, style: TextStyle(decoration: textDecoration)),
        value: widget.finalizado,
        onChanged: (bool? value) {
          setState(() {
            widget.finalizado = value!;
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
