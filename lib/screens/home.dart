import 'package:flutter/material.dart';
import 'package:tracker/colours/colours.dart';
import 'package:tracker/screens/dashboard.dart';
import '../widget/todo.dart';
class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold (
      backgroundColor:tdPastely,
      appBar : buildAppBar(context),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15.0,horizontal:20.0),
        child:Column(
          children:[
            Searchbox(),
            Expanded(
            child:ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(top:25,bottom:20),
                  child:Text('Pending Tasks',
                  style:TextStyle(color:tdBlack,
                    fontWeight:FontWeight.w500,
                    fontSize:30,)),
                ),
                ToDoItem(),
                ToDoItem(),
                ToDoItem(),
                ToDoItem(),
                ToDoItem(),
                ToDoItem(),
                ToDoItem(),
                ToDoItem(),
                ToDoItem(),
                ToDoItem(),
                ToDoItem(),
                ToDoItem(),
              ]
            )
            )
          ],
        ),
      ),
    );
  }

  Widget Searchbox(){
    return Container(
      decoration:BoxDecoration(
      ),
      child: TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(0),
              prefixIcon:Icon(Icons.search,color:tdViolet,size:30,),
              prefixIconConstraints:BoxConstraints(maxHeight:20, minWidth:25),
              hintText:'Search',
              hintStyle: TextStyle(color:tdViolet,
                fontSize:20,)
          )
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor:tdPastelv,
      title:Text('To Do List',
      style:TextStyle(color:tdYellow,
      fontWeight:FontWeight.bold,
      fontSize:30,)),
      actions: [
        IconButton(
          icon:Icon(Icons.home,color:tdYellow,size:30,),
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          onPressed:(){
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Already on Home')));},
        ),
        IconButton(
          icon:Icon(Icons.face,color:tdYellow,size:30,),
            padding: EdgeInsets.symmetric(horizontal: 21.0),
          onPressed:(){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Dashboard()),
            );
          }
        )
      ],
    );
  }
}