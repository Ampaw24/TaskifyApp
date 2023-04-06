import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool is_checked;
  final Function(bool ? check) checkedFunction;

  TaskTile(
      {super.key,
      required this.taskTitle,
      this.is_checked = false,
      required this.checkedFunction});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle),
      trailing: Checkbox(
          value: is_checked,
          onChanged:checkedFunction,
          )
    );
  }
}
