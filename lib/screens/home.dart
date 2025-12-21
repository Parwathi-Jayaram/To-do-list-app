import 'package:flutter/material.dart';
import 'package:tracker/colours/colours.dart';
import 'package:tracker/screens/dashboard.dart';
import '../widget/todo.dart';
import '../model/to.dart';
class Home extends StatelessWidget{
  Home({super.key});

  final todoList= ToDo.todoList();

  @override
  Widget build(BuildContext context){
    return Scaffold (
      backgroundColor:tdPastely,
      appBar : buildAppBar(context),
      body: Stack(
        children: [Container(
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
        
                  for(ToDo todo in todoList)
                  ToDoItem(todo: todo,),
                ]
              )
              )
            ],
          ),
        ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(children: [
              Expanded(
                child: Container(
                  margin : EdgeInsets.only(bottom:20,right: 20,left: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical:5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [BoxShadow(
                      color: Colors.grey,offset: Offset(0.0, 0.0),blurRadius: 10.0,spreadRadius: 0.0,
                    ),],
                      borderRadius: BorderRadius.circular(10.0),
                  ),
                  child:TextField(
                    decoration: InputDecoration(
                      hintText: 'Add a new task',
                      border: InputBorder.none
                    )
                  )
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom:20,right:20),
                child:ElevatedButton(
                    child: Text('+', style: TextStyle(fontSize: 40,color:tdBlack),),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    // primary: tdBlack,
                    minimumSize: Size(60,60),
                    elevation: 10,
                  ),
                )
              ),
            ])
          )

    ]
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