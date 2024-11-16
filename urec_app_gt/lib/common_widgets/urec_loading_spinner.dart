import 'package:flutter/material.dart';

class UrecLoadingSpinner extends StatefulWidget {
  const UrecLoadingSpinner({super.key});

  @override
  State<UrecLoadingSpinner> createState() => _UrecLoadingSpinnerState();
}

class _UrecLoadingSpinnerState extends State<UrecLoadingSpinner> with TickerProviderStateMixin {
  late AnimationController controller;
  bool light = true;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return const Center(
      child: CircularProgressIndicator(
        semanticsLabel: 'Circular loading spinner',
      ),
    );
  }
}

