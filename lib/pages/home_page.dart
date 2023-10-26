import 'package:flutter/material.dart';
import 'package:task_list/models/list_item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<ListItem> lista = [];

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
                    onPressed: () {},
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
                    Container(
                      child: Text("asjkjsdhfçasldfh"),
                    ),
                    Container(
                      child: Text("asjkjsdhfçasldfh"),
                    ),
                    Container(
                      child: Text("asjkjsdhfçasldfh"),
                    ),
                    Container(
                      child: Text("asjkjsdhfçasldfh"),
                    ),
                    Container(
                      child: Text("asjkjsdhfçasldfh"),
                    ),
                    Container(
                      child: Text("asjkjsdhfçasldfh"),
                    ),
                    Container(
                      child: Text("asjkjsdhfçasldfh"),
                    ),
                    Container(
                      child: Text("asjkjsdhfçasldfh"),
                    ),
                    Container(
                      child: Text("asjkjsdhfçasldfh"),
                    ),
                    Container(
                      child: Text("asjkjsdhfçasldfh"),
                    ),
                    Container(
                      child: Text("asjkjsdhfçasldfh"),
                    ),
                    Container(
                      child: Text("asjkjsdhfçasldfh"),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Você tem 0 tarefas pendentes",
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
