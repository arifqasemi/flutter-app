import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key, required this.onChangeHander});

  final Function( ) onChangeHander;


  @override
  Widget build(BuildContext context) {
    return  OutlinedButton(onPressed: onChangeHander, child:const Text('data'));
  }
  
}

