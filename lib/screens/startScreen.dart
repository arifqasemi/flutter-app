import 'package:flutter/material.dart';

class Startscreen extends StatefulWidget {
  const Startscreen(this.toggle, {super.key});

  final void Function() toggle;

  @override
  State<Startscreen> createState() {
    return _StartscreenState();
  }
}

class _StartscreenState extends State<Startscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('column one'),
                  OutlinedButton(
                    onPressed: widget.toggle,
                    child: const Text('go back'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: const Color.fromARGB(255, 11, 181, 14),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('column two'),
                  Text('column two content'),
                ],
              ),
            ),
          ),
          const Text('some text'),
        ],
      ),
    );
  }
}
