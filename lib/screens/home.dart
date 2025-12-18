import 'package:flutter/material.dart';
import 'package:tracker/colours/colours.dart';
import 'package:tracker/screens/dashboard.dart';
class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold (
      appBar : AppBar(
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
      ),
      body: Container(
        child:Text('This is home screen'),
      ),
    );
  }
}