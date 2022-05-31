import 'package:calculator/color_styles.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = ColorStyle.softBlue,
    this.padding = const EdgeInsets.all(ColorStyle.defaultPadding * 0.75),
  }) : super(key: key);

  final String text;
  final VoidCallback press;
  final color;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(padding: padding),
    );
  }
}
