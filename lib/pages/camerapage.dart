import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:first_app/screens/failureScreen.dart';
import 'package:first_app/screens/successScreen.dart';
import 'package:flutter/services.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  String snapToken = '';

  @override
  void initState() {
    super.initState();
    createTransaction();
  }

  Future<void> createTransaction() async {
    print('Transaction initiated');
    final response = await http.post(
      Uri.parse('http://192.168.0.103:8181/home'),
      headers: {'Content-Type': 'application/json'},
      // body: jsonEncode({
      //   'order_id': 'order-101',
      //   'gross_amount': 10000,
      //   'customer_details': {
      //     'first_name': 'John',
      //     'last_name': 'Doe',
      //     'email': 'john.doe@example.com',
      //     'phone': '081234567890',
      //   }
      // }),
    );

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      setState(() {
        snapToken = responseData;
        print('Snap token updated: $snapToken');
      });
    } else {
      print('Error: ${response.reasonPhrase}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Column(
          children: [
            Expanded(
                  flex: 6,
                    child:snapToken.isEmpty
                ? Center(child: Text('Loading...'))
                :  WebView(
                      initialUrl:
                          'https://app.sandbox.midtrans.com/snap/v2/vtweb/$snapToken',
                      javascriptMode: JavascriptMode.unrestricted,
                      navigationDelegate: (NavigationRequest request) {
                         print('Navigating to: ${request.url}'); 
                        if (request.url.contains('settlement')) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  Successscreen(),),
                          );
                        } 
                        if (request.url.contains('pending')) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Failurescreen()),
                          );
                        }
                         if (request.url.contains('cancel')) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Failurescreen()),
                          );
                        }
                         if (request.url.contains('failed')) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Failurescreen()),
                          );
                        }
                        return NavigationDecision.navigate;
                      },
                    ),
                  ),
            Expanded(
              flex: 2,
              child: Center(
                child: OutlinedButton(
                  child: Text('Pay now'),
                  onPressed: createTransaction,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
