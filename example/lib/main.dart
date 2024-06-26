import 'package:flutter/material.dart';

import 'package:yoti_flutter_unofficial/yoti_flutter_unofficial.dart';
import 'dart:async';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _yotiFlutterPlugin = YotiFlutterUnofficial();

  @override
  void initState() {
    super.initState();
  }

  Future<void> startYoti() async {
    try {
      var response = await _yotiFlutterPlugin.startYoti(
          "4e44f64c-bd8f-4eec-88ef-0b378e1afa08",
          "5f6c67b4-a507-4da3-81f9-d6960c8d3476",
          );

      print(response);
    } catch (error) {
      print('Platform err: ${error.toString()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Yoti Flutter example app'),
        ),
        body: Center(
          child: TextButton(
              onPressed: () {
                startYoti();
              },
              child: const Text('Start Yoti Session')),
        ),
      ),
    );
  }
}
