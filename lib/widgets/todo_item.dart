import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo_app/model/todo.dart';
import 'package:todo_app/screens/theme.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;

  const ToDoItem(
      {super.key, required this.todo, required this.onToDoChanged,  required this.onDeleteItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: primaryClr,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
              fontSize: 16,
              decoration: todo.isDone
                  ? TextDecoration.lineThrough
                  : TextDecoration.none),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: pinkClr,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: white,
            onPressed: () {
              onDeleteItem(todo.id);
            },
            icon: const Icon(Icons.delete),
            iconSize: 18,
          ),
        ),
      ),
    );
  }
}
