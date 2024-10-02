import 'package:bookly_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.borderRadius,
    required this.text,
  });
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 37),
        height: 48,
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(borderRadius: borderRadius)),
          onPressed: () {},
          child: Text(
            text,
            style: Styles.titleStyle18
                .copyWith(color: textColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
