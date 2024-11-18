//Write a dart menu bar widget, that could store up to n iconbuttons either verticall or horizontally
import 'package:flutter/material.dart';
import 'package:urec_app_gt/common_widgets/urec_iconbutton.dart';

class UrecMenuBar extends StatelessWidget {
  final List<UrecIconButton> buttons;
  final Axis direction;

  UrecMenuBar({required this.buttons, this.direction = Axis.horizontal});

  @override
  Widget build(BuildContext context) {
    return direction == Axis.horizontal
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: buttons,
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: buttons,
          );
  }
}