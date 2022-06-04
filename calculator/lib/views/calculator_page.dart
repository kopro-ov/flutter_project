import 'package:calculator/controller/calculator_controller.dart';
import 'package:calculator/widgets/button/primary_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CalculatorController controller = Get.put(CalculatorController());
    return Scaffold(
      appBar: AppBar(title: const Text('CalculatorPage')),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(20.0),
            child: Obx(
              () => Text(
                '${controller.output}',
                textAlign: TextAlign.right,
                style: const TextStyle(fontSize: 25),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Obx(
                  () => PrimaryElevatedButton(
                    press: () {
                      controller.clear();
                    },
                    text: '${controller.clearBtn}',
                  ),
                ),
              ),
              Expanded(
                child: PrimaryElevatedButton(
                  press: () {
                    controller.operand('+/-');
                  },
                  text: '+/-',
                ),
              ),
              Expanded(
                child: PrimaryElevatedButton(
                  press: () {
                    controller.operand('%');
                  },
                  text: '%',
                ),
              ),
              Expanded(
                child: PrimaryElevatedButton(
                  press: () {
                    controller.operand('÷');
                  },
                  text: '÷',
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: PrimaryElevatedButton(
                  press: () {
                    controller.addNumber('7');
                  },
                  text: '7',
                ),
              ),
              Expanded(
                child: PrimaryElevatedButton(
                  press: () {
                    controller.addNumber('8');
                  },
                  text: '8',
                ),
              ),
              Expanded(
                child: PrimaryElevatedButton(
                  press: () {
                    controller.addNumber('9');
                  },
                  text: '9',
                ),
              ),
              Expanded(
                child: PrimaryElevatedButton(
                  press: () {
                    controller.operand('*');
                  },
                  text: '*',
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: PrimaryElevatedButton(
                  press: () {
                    controller.addNumber('4');
                  },
                  text: '4',
                ),
              ),
              Expanded(
                child: PrimaryElevatedButton(
                  press: () {
                    controller.addNumber('5');
                  },
                  text: '5',
                ),
              ),
              Expanded(
                child: PrimaryElevatedButton(
                  press: () {
                    controller.addNumber('6');
                  },
                  text: '6',
                ),
              ),
              Expanded(
                child: PrimaryElevatedButton(
                  press: () {
                    controller.operand('-');
                  },
                  text: '-',
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: PrimaryElevatedButton(
                  press: () {
                    controller.addNumber('1');
                  },
                  text: '1',
                ),
              ),
              Expanded(
                child: PrimaryElevatedButton(
                  press: () {
                    controller.addNumber('2');
                  },
                  text: '2',
                ),
              ),
              Expanded(
                child: PrimaryElevatedButton(
                  press: () {
                    controller.addNumber('3');
                  },
                  text: '3',
                ),
              ),
              Expanded(
                child: PrimaryElevatedButton(
                  press: () {
                    controller.operand('+');
                  },
                  text: '+',
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: PrimaryElevatedButton(
                  press: () {
                    controller.addNumber('0');
                  },
                  text: '0',
                ),
              ),
              Expanded(
                child: PrimaryElevatedButton(
                  press: () {
                    controller.operand('.');
                  },
                  text: '.',
                ),
              ),
              Expanded(
                child: PrimaryElevatedButton(
                  press: () {
                    controller.equal();
                  },
                  text: '=',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
