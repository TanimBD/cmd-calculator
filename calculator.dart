import 'dart:io';

void main() {
  print('================================');
  print('         CMD CALCULATOR');
  print('================================');
  print('Supported: +  -  *  /');
  print("Type 'exit' to quit.");

  while (true) {
    stdout.write('\nEnter first number: ');
    String? input1 = stdin.readLineSync();

    if (input1 == null || input1.toLowerCase() == 'exit') {
      print('Calculator closed.');
      break;
    }

    double? num1 = double.tryParse(input1.trim());

    if (num1 == null) {
      print('Error: Invalid number!');
      continue;
    }

    stdout.write('Enter operator (+, -, *, /): ');
    String? operator = stdin.readLineSync();

    if (operator == null || operator.toLowerCase() == 'exit') {
      print('Calculator closed.');
      break;
    }

    operator = operator.trim();

    if (!['+', '-', '*', '/'].contains(operator)) {
      print('Error: Invalid operator!');
      continue;
    }

    stdout.write('Enter second number: ');
    String? input2 = stdin.readLineSync();

    if (input2 == null || input2.toLowerCase() == 'exit') {
      print('Calculator closed.');
      break;
    }

    double? num2 = double.tryParse(input2.trim());

    if (num2 == null) {
      print('Error: Invalid number!');
      continue;
    }

    double result;

    switch (operator) {
      case '+':
        result = num1 + num2;
        break;

      case '-':
        result = num1 - num2;
        break;

      case '*':
        result = num1 * num2;
        break;

      case '/':
        if (num2 == 0) {
          print('Error: Cannot divide by zero!');
          continue;
        }
        result = num1 / num2;
        break;

      default:
        continue;
    }

    print('Result: $result');
  }
}