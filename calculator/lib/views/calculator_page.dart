import 'package:calculator/controller/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CalculatorController controller = Get.put(CalculatorController());
    return Scaffold(
      appBar: AppBar(title: Text('CalculatorPage')),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20.0),
            child: Obx(
              () => Text(
                '${controller.ouput}',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      controller.operand('AC');
                    },
                    child: Text('AC')),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      controller.operand('+/-');
                    },
                    child: Text('+/-')),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      controller.operand('%');
                    },
                    child: Text('%')),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      controller.operand('÷');
                    },
                    child: Text('÷')),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      controller.addNumber('7');
                    },
                    child: Text('7')),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      controller.addNumber('8');
                    },
                    child: Text('8')),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      controller.addNumber('9');
                    },
                    child: Text('9')),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      controller.operand("*");
                    },
                    child: Text('*')),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      controller.addNumber('4');
                    },
                    child: Text('4')),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      controller.addNumber('5');
                    },
                    child: Text('5')),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      controller.addNumber('6');
                    },
                    child: Text('6')),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      controller.operand("-");
                    },
                    child: Text('-')),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      controller.addNumber('1');
                    },
                    child: Text('1')),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      controller.addNumber('2');
                    },
                    child: Text('2')),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      controller.addNumber('3');
                    },
                    child: Text('3')),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      controller.operand('+');
                    },
                    child: Text('+')),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: ElevatedButton(
                    onPressed: () {
                      controller.addNumber('0');
                    },
                    child: Text('0')),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      controller.operand(".");
                    },
                    child: Text('.')),
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      controller.operand("=");
                    },
                    child: Text('=')),
              ),
            ],
          )
        ],
      ),
    );
  }
}
