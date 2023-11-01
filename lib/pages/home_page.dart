import 'package:flutter/material.dart';
import 'package:task_list/models/tarefa.dart';
import 'package:task_list/widgets/card_tarefa.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController listItemController = TextEditingController();

  List<Tarefa> lista = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Lista de tarefas",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                      child: TextField(
                    controller: listItemController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Insira sua tarefa",
                      hintText: "Estudar",
                    ),
                  )),
                  SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      padding: EdgeInsets.all(10),
                    ),
                    onPressed: () {
                      //método pra quando incluir o item
                      String titulo = listItemController.text;
                      setState(() {
                        Tarefa tarefa = Tarefa(title: titulo, dateTime: DateTime.now());
                        lista.add(tarefa);
                      });
                      listItemController.clear();
                    },
                    child: Icon(
                      Icons.add,
                      size: 40,
                    ),
                  )
                ],
              ),
              Flexible(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    for (Tarefa tarefa in lista)
                      CardTarefa(titulo: tarefa.title, data: tarefa.dateTime),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Você tem ${lista.length} tarefas pendentes",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          padding: EdgeInsets.all(16)),
                      child: Text("Limpar tudo"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
