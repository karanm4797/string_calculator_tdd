class StringCalculator {
  //String numbers calculator
  int add(String input) {
    //If input is empty then we will return 0
    if (input.isEmpty) {
      return 0;
    }
    //If input is single number then we will return same number
    else if (input.length == 1) {
      return int.parse(input);
    }
    //If input is having any chars inside of it then we will throw error
    else if (RegExp(r'[a-zA-Z]').hasMatch(input)) {
      throw Exception('Chars not allowed -> $input');
    }
    //If multiple delimiters are used then we will throw error
    else if (input.startsWith('//') && input.contains('[') && input.contains(']')) {
      throw Exception('Multiple delimiters not allowed -> $input');
    }
    //If there is comma separated input then we will do the calculation
    else {
      String delimiter = ',';

      //Check if different delimiter is there
      if (input.startsWith('//')) {
        final parts = input.split('\n');
        delimiter = parts[0].substring(2);
        input = parts.sublist(1).join('\n');
      }

      //Replace different delimiter with ','
      input = input.replaceAll('\n', delimiter);

      //Split the numbers and add them to the int list
      final numberStrings = input.split(delimiter);
      final numbers = numberStrings.map(int.parse).toList();

      // Check if negative numbers are there
      final negatives = numbers.where((n) => n < 0).toList();
      if (negatives.isNotEmpty) {
        throw Exception('Negatives not allowed -> ${negatives.join(',')}');
      }

      //Return sum of the numbers
      return numbers.fold(0, (sum, number) => sum + number);
    }
  }
}
