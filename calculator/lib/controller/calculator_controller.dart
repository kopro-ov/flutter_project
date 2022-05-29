import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class CalculatorController extends GetxController {
  var firstNumber = '0'.obs;
  var secondNumber = '0'.obs;
  var result = '0'.obs;

  reset() {
    firstNumber.value = '0';
    secondNumber.value = '0';
    result.value = '0';
  }

  operand(String o) {
    switch (o) {
      case 'AC':
        reset();
        break;
      case '+/-':
        break;
      case '-':
        break;
      case '+':
        break;
      case '*':
        break;
      case '÷':
        break;
      case '=':
        break;
    }
  }

  addNumber(String number) {
    if (secondNumber.value == '0') {
      return secondNumber.value = number;
    }

    if (secondNumber.value == '-0') {
      return secondNumber.value = '-$number';
    }

    return secondNumber.value = secondNumber.value + number;
  }
}
