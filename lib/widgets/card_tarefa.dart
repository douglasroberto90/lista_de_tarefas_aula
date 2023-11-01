import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:task_list/models/tarefa.dart';
import 'package:intl/intl.dart';

class CardTarefa extends StatelessWidget {
  const CardTarefa({super.key, required this.titulo, required this.data});

  final String titulo;
  final DateTime data;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  DateFormat("dd/MM/yyyy - HH:mm").format(data),
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Text(
                  titulo,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
