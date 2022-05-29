import 'package:get/state_manager.dart';

class CalculatorController extends GetxController {
  var output = '0'.obs;
  var result = '0'.obs;
  var operation = ''.obs;

  reset() {
    output.value = '0';
    result.value = '0';
    operation.value = '';
  }

  operand(String o) {
    double x = double.parse(result.value);
    double y = double.parse(output.value);

    switch (o) {
      case 'AC':
        reset();
        break;
      case '+/-':
        output.value = '${-y}'.toString();
        break;
      case '%':
        output.value = '${y * 0.01}'.toString();
        break;
      case '-':
        result.value = '${x - y}';
        output.value = result.value;
        break;
      case '+':
        result.value = '${x + y}';
        output.value = result.value;
        break;
      case '*':
        if (x == 0) x = 1;
        result.value = '${x * y}';
        output.value = result.value;
        break;
      case '÷':
        if (x == 0) {
          x = y;
          y = 1;
        }
        result.value = '${x / y}';
        output.value = result.value;
        break;
      case '=':
        if (operation.value != '=') {
          operand(operation.value);
        } else {
          output.value = result.value;
        }
        break;
    }
    operation.value = o;
  }

  addNumber(String number) {
    if (output.value == result.value) {
      output.value = '0';
    }
    if (output.value == '0') {
      return output.value = number;
    }

    if (output.value == '-0') {
      return output.value = '-$number';
    }

    return output.value = output.value + number;
  }
}
