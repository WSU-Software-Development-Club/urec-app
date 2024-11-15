

import 'package:flutter/material.dart';



class UrecSwitch extends StatefulWidget {
  const UrecSwitch({super.key,});

  @override
  State<UrecSwitch> createState() => _UrecSwitchState();
}

class _UrecSwitchState extends State<UrecSwitch> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Switch(
      value: light,
      activeColor: theme.primaryColor,
      onChanged: (bool value) {
        setState(() {
          light = value;
        }
        );
      }
    );
  }

}