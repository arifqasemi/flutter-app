import 'package:flutter/material.dart';

class Successscreen extends StatelessWidget {
  const Successscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Transaction Successful')),
      body: Center(child: Text('Your transaction was successful!')),
    );
  }
}