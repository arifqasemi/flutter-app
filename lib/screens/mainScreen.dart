import 'package:flutter/material.dart';
import 'package:first_app/sections/profile.dart';
import 'package:first_app/sections/reminder.dart';
import 'package:first_app/sections/tabs.dart';
import 'package:first_app/sections/customtab.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() {
    return MainscreenState();
  }
}

class MainscreenState extends State<Mainscreen> {
  void _onChangeHandler(String value) {
    // print('print some test');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                        width: double.infinity,
                        color: const Color.fromARGB(255, 226, 226, 226),
                        child: const Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Profile(),SizedBox(height: 28,), Reminder()],
                        ))),
                Expanded(
                    flex: 4,
                    child: Container(
                       alignment: Alignment.topCenter,
                        width: double.infinity,
                        color: const Color.fromARGB(255, 54, 92, 244),
                        child: const Customtab()))
              ],
            )),
      ),
    );
  }
}
