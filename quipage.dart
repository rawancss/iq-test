import 'package:flutter/material.dart';

import 'homescrenquiz.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({Key? key,
    required this.question,
    required this.indexAction,
    required this.totalQuestions})
      : super(key: key);

  final String question ;
  final int indexAction;
  final int totalQuestions;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        'السؤال ${indexAction + 1}/'
            '$totalQuestions: $question' ,
        style: const TextStyle(
            fontSize: 24.0,
            color:Colors.black),
      ),
    );
  }
}
