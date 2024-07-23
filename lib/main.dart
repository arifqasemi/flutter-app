import 'package:first_app/text.dart';
import 'package:flutter/material.dart';
import 'package:first_app/text_container.dart';
import 'package:first_app/screens/mainScreen.dart';
import 'package:first_app/bottom-tabs/tabs.dart';
import 'package:first_app/bottom-tabs/tab.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() {
  runApp(const ProviderScope(
    child:  MaterialApp(debugShowCheckedModeBanner: false,title: 'flutter app',
      home: Tabs(),
    ),
  ));
}



