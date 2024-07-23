import 'package:flutter/material.dart';

class MyShap extends StatelessWidget {
  const MyShap({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: ClipRRect(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),topRight: Radius.circular(30)),
          child: Container(
                color: Color.fromARGB(255, 55, 26, 187),
                height: 50,
                width: 50,
                child: Text('data'),
              ),
        ),
      );
  }
}