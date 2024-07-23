import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class HttpRequest extends StatefulWidget {
  @override
  State<HttpRequest> createState() => _HttpRequestState();
}

class _HttpRequestState extends State<HttpRequest> {
  List<dynamic> _products = [];
  bool is_loading = false;

  @override
  void initState(){
    super.initState();
    _getData();
  }

  Future<void> _getData() async {
    setState(() {
      is_loading = true;
    });
    final url = Uri.parse('https://dummyjson.com/products');

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        _products = data['products'];
        is_loading = false;
      });

      // ignore: avoid_print
      print('Response data: ${response.body}');
    } else {
      // ignore: avoid_print
      print('Request failed with status: ${response.statusCode}');
    }
  }

  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(flex: 1,child: OutlinedButton(onPressed: _getData, child: Text('get the data'))),
          is_loading
              ? Text('loading')
              : Expanded(
                flex: 7,
                  child: ListView.builder(
                    itemCount: _products.length,
                    itemBuilder: (context, index) {
                      final product = _products[index];
                      return ListTile(
                        title: Text(product['title']),
                        subtitle: Text(product['description']),
                      );
                    },
                  ),
                ),
        ],
      )),
    );
  }
}
