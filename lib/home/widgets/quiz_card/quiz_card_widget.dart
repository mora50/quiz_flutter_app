import 'package:flutter/material.dart';

import 'package:first_app/core/core.dart';
import 'package:first_app/shared/widgets/progress_indicator/progress_indicator_widget.dart';

class QuizCardWidget extends StatelessWidget {
  final String title;
  final String completed;
  final double percent;
  final VoidCallback onTap;

  const QuizCardWidget({
    Key? key,
    required this.title,
    required this.completed,
    required this.percent,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.fromBorderSide(
            BorderSide(color: AppColors.border),
          ),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 40,
                child: Image.asset(AppImages.blocks),
              ),
              SizedBox(height: 9),
              Text(
                title,
                style: AppTextStyles.heading15,
              ),
              SizedBox(height: 9),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      completed,
                      style: AppTextStyles.body11,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ProgressIndicatorWidget(
                      value: percent,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
