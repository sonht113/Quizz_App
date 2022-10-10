import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() selectHandler;
  const Answer(this.selectHandler, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        child: const Text('Answer'),
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
