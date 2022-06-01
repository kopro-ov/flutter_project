import 'package:calculator/color_styles.dart';
import 'package:flutter/material.dart';

class PrimaryElevatedButton extends StatelessWidget {
  const PrimaryElevatedButton({
    Key? key,
    required this.text,
    required this.press,
    this.onPrimaryColor,
    this.primaryColor,
    this.padding = const EdgeInsets.all(ColorStyle.defaultPadding * 0.75),
  }) : super(key: key);

  final String text;
  final VoidCallback press;
  final onPrimaryColor;
  final primaryColor;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      style: ElevatedButton.styleFrom(
        // Foreground color
        onPrimary: onPrimaryColor != ''
            ? onPrimaryColor
            : Theme.of(context).colorScheme.onPrimaryContainer,
        // Background color
        primary: primaryColor != ''
            ? primaryColor
            : Theme.of(context).colorScheme.primaryContainer,
        padding: padding,
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
