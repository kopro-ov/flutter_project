import 'package:calculator/controller/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorPage extends GetView<CalculatorController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('CalculatorPage')),
        body: SafeArea(child: Text('CalculatorController')));
  }
}
