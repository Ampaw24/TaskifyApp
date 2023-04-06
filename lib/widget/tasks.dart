import 'package:flutter/material.dart';
import 'package:todome/models/tasks.dart';
import 'package:todome/widget/tasktile.dart';

class TaskList extends StatefulWidget {
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Tasks> tasks = [
    Tasks(name: "Buy Waakye", isdone: true),
    Tasks(name: "Buy Waak", isdone: true),
    Tasks(name: "Buy Burger", isdone: true),
    Tasks(name: "Buy Banku", isdone: true),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) => TaskTile(
              is_checked: tasks[index].isdone,
              taskTitle: tasks[index].name,
              checkedFunction: (checkBoxState) {
                setState(() {
                  tasks[index].toogleDone();
                });
              },
            ));
  }
}
