import 'package:flutter/material.dart';
import 'package:tracker/colours/colours.dart';
import 'package:tracker/screens/dashboard.dart';
import '../widget/todo.dart';
import '../model/to.dart';
import 'package:flutter_sliding_box/flutter_sliding_box.dart';
class Home extends StatelessWidget {
  Home({super.key});

  final todoList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdPastely,
      appBar: buildAppBar(context),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
            child: Column(
              children: [
                Searchbox(),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.only(bottom: 160),
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 25, bottom: 20),
                        child: Text(
                          'Pending Tasks',
                          style: TextStyle(
                            color: tdBlack,
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                          ),
                        ),
                      ),

                      for (ToDo todo in todoList) ToDoItem(todo: todo),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child:
                Container(
                  margin: EdgeInsets.only(bottom: 50, right: 5),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min, // 🔑 important
                      children: const [
                        Icon(Icons.add,size:100,color:tdBlack),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: tdWhite,
                    )
                  )

                ),
          ),
        ],
      ),
    );
  }

  Widget Searchbox() {
    return Container(
      decoration: BoxDecoration(),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(Icons.search, color: tdViolet, size: 30),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
          hintText: 'Search',
          hintStyle: TextStyle(color: tdViolet, fontSize: 20),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: tdPastelv,
      title: Text(
        'To Do List',
        style: TextStyle(
          color: tdYellow,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.home, color: tdYellow, size: 30),
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          onPressed: () {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Already on Home')));
          },
        ),
        IconButton(
          icon: Icon(Icons.face, color: tdYellow, size: 30),
          padding: EdgeInsets.symmetric(horizontal: 21.0),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Dashboard()),
            );
          },
        ),
      ],
    );
  }
}
