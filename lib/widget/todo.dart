import 'package:flutter/material.dart';
import 'package:tracker/colours/colours.dart';

class ToDoItem extends StatelessWidget{
  const ToDoItem({super.key});

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
          leading: const Icon(
            Icons.check_box,
            color: Color(0xFF146800),
            size: 20,
          ),
          title: Text(
            'Check Mail',
            style: TextStyle(
              color: tdViolet,
              fontSize: 20,
              decoration: TextDecoration.lineThrough,
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