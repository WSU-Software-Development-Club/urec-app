import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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