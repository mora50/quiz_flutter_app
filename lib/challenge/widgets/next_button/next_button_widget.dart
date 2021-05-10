import 'package:first_app/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color fontColor;
  final Color borderColor;
  final Color overlayColor;
  final VoidCallback onTap;

  NextButtonWidget(
      {required this.label,
      required this.backgroundColor,
      required this.fontColor,
      required this.borderColor,
      required this.overlayColor,
      required this.onTap});

  //Construtores de cores (cores pré definidas dentro da classe);

  NextButtonWidget.green({
    required String label,
    required this.onTap,
  })  : this.backgroundColor = AppColors.darkGreen,
        this.fontColor = AppColors.white,
        this.borderColor = AppColors.green,
        this.overlayColor = Colors.green,
        this.label = label;

  NextButtonWidget.white({
    required String label,
    required this.onTap,
  })  : this.backgroundColor = AppColors.white,
        this.fontColor = AppColors.grey,
        this.overlayColor = AppColors.lightGrey,
        this.borderColor = AppColors.border,
        this.label = label;

  NextButtonWidget.purple({
    required String label,
    required this.onTap,
  })  : this.backgroundColor = AppColors.purple,
        this.fontColor = AppColors.white,
        this.overlayColor = AppColors.lightGrey,
        this.borderColor = AppColors.border,
        this.label = label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(overlayColor),
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          side: MaterialStateProperty.all(
            BorderSide(
              color: borderColor,
            ),
          ),
        ),
        onPressed: onTap,
        child: Text(
          label,
          style: GoogleFonts.notoSans(
              fontWeight: FontWeight.w600, fontSize: 15, color: fontColor),
        ),
      ),
    );
  }
}
