import 'package:get/state_manager.dart';

class CalculatorController extends GetxController {
  var num1 = '0'.obs;
  var num2 = '0'.obs;
  var result = '0'.obs;

  reset() {
    num1.value = '0';
    num2.value = '0';
    result.value = '0';
  }

  operand(String o) {
    int x = int.parse(num1.value);
    int y = int.parse(num2.value);

    switch (o) {
      case 'AC':
        reset();
        break;
      case '+/-':
        num2.value = '${-int.parse(num2.value)}'.toString();
        break;
      case '-':
        result.value = '${x - y}';
        break;
      case '+':
        result.value = '${x + y}';
        break;
      case '*':
        result.value = '${x * y}';
        break;
      case '÷':
        result.value = '${x / y}';
        break;
      case '=':
        num2.value = result.value;
        break;
    }
  }

  addNumber(String number) {
    if (num2.value == '0') {
      return num2.value = number;
    }

    if (num2.value == '-0') {
      return num2.value = '-$number';
    }

    return num2.value = num2.value + number;
  }
}
