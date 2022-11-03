import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'V/theview.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //create a text
      home: ControlApp(),
    );
  }
}
