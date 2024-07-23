import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _controller = TextEditingController();
  String text ='';

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: 'placeholder',
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                      ),
              controller: _controller,
              // ignore: avoid_print
              onChanged: (value) => setState(() {
                text = value;
              })
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
}
