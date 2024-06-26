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
          "8b7d6454-b806-453b-a115-61360bbb9bab",
          "5086471d-8070-45b2-a468-10bf65900720",
          );

      debugPrint(response.toString());
    } catch (error) {
      debugPrint('Platform err: ${error.toString()}');
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
