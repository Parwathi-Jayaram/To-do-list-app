import 'package:flutter/material.dart';
import 'package:tracker/screens/home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key ? key}): super(key:key);

  @override
    Widget build(BuildContext context){
  return MaterialApp(
    title: 'To-Do App',
    home: Home(),
  );
  }
}

