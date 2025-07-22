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

  test('returns sum for multiple comma-separated numbers', () {
    expect(calculator.add('1,2,3,4'), equals(10));
  });

  test('handles newline as delimiter', () {
    expect(calculator.add('1\n2,3'), equals(6));
  });

  test('supports custom delimiter like ";"', () {
    expect(calculator.add('//;\n1;2'), equals(3));
  });

  test('throws exception for single negative number', () {
    expect(
          () => calculator.add('1,-2'),
      throwsA(predicate((e) =>
      e is Exception && e.toString().contains('Negatives not allowed -> -2'))),
    );
  });

  test('should work with large numbers', () {
    expect(calculator.add('1111111, 1111111'), equals(2222222));
  });

  test('should throw error if text is inputted', (){
    expect(
          () => calculator.add('abc'),
      throwsA(predicate((e) =>
      e is Exception && e.toString().contains('Chars not allowed -> abc'))),
    );
  });

  test('should work with long string', () {
    final input = List.generate(1000, (index) => '1').join(',');
    final result = calculator.add(input);
    expect(result, equals(1000));
    expect(calculator.add(input), equals(result));
  });

  test('should throw error if multiple delimiters are used', (){
    expect(
          () => calculator.add('//[*][%]\n1*2%3'),
      throwsA(predicate((e) =>
      e is Exception && e.toString().contains('Multiple delimiters not allowed -> //[*][%]\n1*2%3'))),
    );
  });
}
