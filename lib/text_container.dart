import 'package:flutter/material.dart';
import 'package:first_app/screens/startScreen.dart';
import 'package:first_app/screens/mainScreen.dart';
import 'package:first_app/model/model.dart';

class TextContainer extends StatefulWidget {
  const TextContainer({super.key});
  @override

  State<TextContainer> createState(){
    return _TextContainerState();
  }
}

class _TextContainerState extends State<TextContainer>{
  final List<TextContainer> _registeredExpense =[
    // Expense(title: title, amount: amount, date: date, category: category)
  ];

   bool screen = false;
  void _toggle(){
    setState(() {
      screen = !screen;
    });
  }
  @override
  Widget build( context) {
    return  Startscreen(_toggle);
  }
}
