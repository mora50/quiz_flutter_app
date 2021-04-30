import 'package:first_app/challenge/widgets/anwser/anwser_widget.dart';
import 'package:first_app/core/core.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  const QuizWidget({Key? key, required this.title}) : super(key: key);

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
              title,
              style: AppTextStyles.heading,
            ),
            SizedBox(
              height: 24,
            ),
            AnwserWidget(
                isSelected: true,
                isRight: false,
                question:
                    "Possibilita a criação de um widgetsssssssssssssssssssssssssssssssss")
          ],
        ),
      ),
    );
  }
}
