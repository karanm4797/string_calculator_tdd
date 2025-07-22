import 'package:flutter/material.dart';

class StringCalculatorScreen extends StatefulWidget {
  const StringCalculatorScreen({super.key});

  @override
  State<StringCalculatorScreen> createState() => _StringCalculatorScreenState();
}

class _StringCalculatorScreenState extends State<StringCalculatorScreen> {
  TextEditingController stringInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'String Calculator',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 30),
              TextFormField(controller: stringInputController),
              SizedBox(height: 30),
              FilledButton(
                onPressed: () {},
                child: Text(
                  'TEST',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  int add(String input) {
    var total = 0;
    if (input.isEmpty) {
      return 0;
    } else {
      return total;
    }
  }
}
