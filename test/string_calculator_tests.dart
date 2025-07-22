import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator_tdd/data/string_calculator.dart';

void main() {
  final calculator = StringCalculator();

  test('returns 0 for empty string', () {
    expect(calculator.add(''), 0);
  });

  test('returns number for single input', () {
    expect(calculator.add('7'), equals(7));
  });

  test('returns sum for two comma-separated numbers', () {
    expect(calculator.add('3,4'), equals(7));
  });
}
