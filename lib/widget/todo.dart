import 'package:flutter/material.dart';
import 'package:tracker/colours/colours.dart';
import 'package:tracker/model/to.dart';

class ToDoItem extends StatelessWidget{
  final ToDo todo;
  const ToDoItem({super.key,required this.todo});

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Material(
        color: tdWhite,
        borderRadius: BorderRadius.circular(20),
        child: ListTile(
          onTap: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding:
          const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          leading:Icon(
            todo.isDone?Icons.check_box:Icons.check_box_outline_blank,
            color: Color(0xFF146800),
            size: 20,
          ),
          title: Text(
            todo.todoText!,
            style: TextStyle(
              color: tdViolet,
              fontSize: 20,
              decoration: todo.isDone?TextDecoration.lineThrough : null,
            ),
          ),
          trailing: IconButton(
            icon: const Icon(
              Icons.delete,
              color: Color(0xFFFF0000),
              size: 20,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );

  }
}