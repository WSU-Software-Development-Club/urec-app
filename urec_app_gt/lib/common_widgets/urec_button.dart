import 'package:flutter/cupertino.dart';
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


/*
class UrecButton extends StatefulWidget {

  const UrecButton({Key? key}) : super(key: key);

  @override
  State<UrecButton> createState() => _UrecButtonState();
}

class _UrecButtonState extends State<UrecButton>{
  bool light = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ElevatedButton(
      child: Text('Button'),
      onPressed: () {
        setState(() {
          print('Pressed Button');
        });
      },
    );
  }
}
*/