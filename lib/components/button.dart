import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:splitez/utils/color.dart';

class PrimaryButton extends StatelessWidget {
  final Function()? onTap;
  final String buttonText;
  final Color buttonColor;
  final Color borderColor;
  final Color textColor;

  const PrimaryButton({
    Key? key,
    required this.onTap,
    required this.buttonText,
    required this.buttonColor,
    required this.borderColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
            padding: const EdgeInsets.fromLTRB(
              8,
              15,
              8,
              15,
            ),
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(
                25,
              ),
              border: Border.all(
                color: borderColor,
                width: 1,
              ),
            ),
            child: Center(
                child: Text(
              buttonText,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w300,
                fontSize: 16,
              ),
            ))),
      ),
    );
  }
}
