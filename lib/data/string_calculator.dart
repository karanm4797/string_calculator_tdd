class StringCalculator {
  int add(String input) {
    if (input.isEmpty) {
      return 0;
    } else if (input.length == 1) {
      return int.parse(input);
    } else {
      final numberStrings = input.split(',');
      final numbers = numberStrings.map(int.parse).toList();
      return numbers.fold(0, (sum, number) => sum + number);
    }
  }
}
