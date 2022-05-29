import 'package:get/state_manager.dart';

class CalculatorController extends GetxController {
  var ouput = '0'.obs;
  var result = '0'.obs;
  var operation = ''.obs;

  reset() {
    ouput.value = '0';
    result.value = '0';
    operation.value = '';
  }

  operand(String o) {
    double x = double.parse(result.value);
    double y = double.parse(ouput.value);

    switch (o) {
      case 'AC':
        reset();
        break;
      case '+/-':
        ouput.value = '${-y}'.toString();
        break;
      case '-':
        result.value = '${x - y}';
        break;
      case '+':
        result.value = '${x + y}';
        break;
      case '*':
        if (x == 0) x = 1;
        result.value = '${x * y}';
        break;
      case '÷':
        if (x == 0) {
          x = y;
          y = 1;
        }
        result.value = '${x / y}';
        break;
      case '=':
        operand(operation.value);
        break;
    }
    operation.value = o;
    ouput.value = result.value;
  }

  addNumber(String number) {
    if (ouput.value == result.value) {
      ouput.value = '0';
    }
    if (ouput.value == '0') {
      return ouput.value = number;
    }

    if (ouput.value == '-0') {
      return ouput.value = '-$number';
    }

    return ouput.value = ouput.value + number;
  }
}
