import 'package:flutter/material.dart';
import 'package:tracker/colours/colours.dart';
import 'package:tracker/screens/home.dart';
class Dashboard extends StatelessWidget{
  const Dashboard({super.key});

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
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );},
          ),
          IconButton(
              icon:Icon(Icons.face,color:tdYellow,size:30,),
              padding: EdgeInsets.symmetric(horizontal: 21.0),
              onPressed:(){
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Already on Dashboard')));
              }
          )
        ],
      ),
      body: Container(
        child:Text('This is dashboard screen'),
      ),
    );
  }
}