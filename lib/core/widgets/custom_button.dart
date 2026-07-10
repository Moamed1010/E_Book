import 'package:booklyapp/core/utils/styels.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        child: Text(text, style: Styles.textStyle18.copyWith(color: textColor)),
      ),
    );
  }
}
