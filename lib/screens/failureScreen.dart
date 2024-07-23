import 'package:flutter/material.dart';

class Failurescreen extends StatelessWidget {
  const Failurescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Transaction Failed')),
      body: Center(child: Text('Your transaction failed. Please try again.')),
    );
  }
}