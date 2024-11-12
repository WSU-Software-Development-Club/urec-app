import 'package:flutter/material.dart';

class UrecButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color;
  final Color? textColor;

  const UrecButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? Theme.of(context).colorScheme.primary,
      ),
      child: Text(
        text,
        style: TextStyle(color: textColor ?? Theme.of(context).colorScheme.onPrimary),
      ),
      onPressed: onPressed,
    );
  }
}
