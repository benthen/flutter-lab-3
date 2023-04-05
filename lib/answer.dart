import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  final VoidCallback selectHandler;
  var answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.green)),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}