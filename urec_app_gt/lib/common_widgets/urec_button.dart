import 'package:flutter/material.dart';

class UrecButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color;

  const UrecButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? Theme.of(context).primaryColor,
      ),
      child: Text(text),
      onPressed: onPressed,
    );
  }
}
