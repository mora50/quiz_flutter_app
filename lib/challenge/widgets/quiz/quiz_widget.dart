import 'package:first_app/challenge/widgets/anwser/anwser_widget.dart';
import 'package:first_app/core/core.dart';
import 'package:first_app/shared/models/answer_model.dart';
import 'package:first_app/shared/models/question_model.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;
  final VoidCallback onChange;
  const QuizWidget({Key? key, required this.question, required this.onChange})
      : super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = -1;

  AnswerModel answer(int index) => widget.question.answers[index];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 64,
            ),
            Text(
              widget.question.title,
              style: AppTextStyles.heading,
            ),
            SizedBox(
              height: 24,
            ),
            for (var i = 0; i < widget.question.answers.length; i++)
              AnwserWidget(
                answer: answer(i),
                isSelected: indexSelected == i,
                disabled: indexSelected != -1,
                onTap: () {
                  indexSelected = i;
                  widget.onChange();

                  setState(() {});
                },
              )
          ],
        ),
      ),
    );
  }
}
