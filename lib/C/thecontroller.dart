import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:addgetx/main.dart';
import 'package:addgetx/V/theview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TheController extends GetxController {
  var valuecontroller = TextEditingController();
  var tasks = [
    'Math Homework',
    'English Exam',
  ].obs;

  void add(var value) {
    tasks.add(value.toString());
    valuecontroller.clear();
  }

  void remove(var index) {
    tasks.removeAt(index);
  }
}
