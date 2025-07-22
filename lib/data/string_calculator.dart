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

      //Return sum of the numbers
      return numbers.fold(0, (sum, number) => sum + number);
    }
  }
}
