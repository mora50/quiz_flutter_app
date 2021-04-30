import 'package:first_app/core/core.dart';
import 'package:flutter/material.dart';

class AnwserWidget extends StatelessWidget {
  final String question;
  final bool isRight;
  final bool isSelected;
  const AnwserWidget(
      {Key? key,
      required this.question,
      this.isRight = false,
      this.isSelected = false})
      : super(key: key);

  Color get _selectedColorRight =>
      isRight ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderRight =>
      isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardRight =>
      isRight ? AppColors.lightGreen : AppColors.lightRed;

  TextStyle get _selectedTextStyledRight =>
      isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  Color get _selectedBorderCardRight =>
      isRight ? AppColors.green : AppColors.red;

  IconData get _selectedIconRight => isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: isRight ? _selectedColorCardRight : AppColors.white,
          border: Border.fromBorderSide(
            BorderSide(
                color: isRight ? _selectedBorderCardRight : AppColors.border),
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(question,
                style:
                    isSelected ? _selectedTextStyledRight : AppTextStyles.body),
          ),
          Container(
            decoration: BoxDecoration(
              color: isSelected ? _selectedColorRight : AppColors.darkGreen,
              borderRadius: BorderRadius.circular(500),
              border: Border.fromBorderSide(
                BorderSide(
                    color:
                        isSelected ? _selectedBorderRight : AppColors.border),
              ),
            ),
            height: 24,
            width: 24,
            child: isSelected
                ? Icon(
                    _selectedIconRight,
                    size: 16,
                    color: AppColors.white,
                  )
                : null,
          )
        ],
      ),
    );
  }
}
