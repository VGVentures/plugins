import 'dart:io' show Platform;

import 'package:flutter/material.dart';

// ignore_for_file: public_member_api_docs

void startApp() => runApp(App());

class App extends StatelessWidget {
  String get _os => Platform.operatingSystem;

  @override
  Widget build(BuildContext context) => MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('Plugin example app')),
          body: Center(child: Text('Platform: $_os\n'))));
}
