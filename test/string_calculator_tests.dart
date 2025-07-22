import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator_tdd/data/string_calculator.dart';

void main() {
  final calculator = StringCalculator();

  test('returns 0 for empty string', () {
    expect(calculator.add(''), 0);
  });
}
