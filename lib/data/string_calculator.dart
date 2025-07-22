class StringCalculator {
  int add(String input) {
    if (input.isEmpty) {
      return 0;
    } else if (input.length == 1) {
      return int.parse(input);
    } else {
      var numbers = input.split(',');
      return int.parse(numbers[0]) + int.parse(numbers[1]);
    }
  }
}
