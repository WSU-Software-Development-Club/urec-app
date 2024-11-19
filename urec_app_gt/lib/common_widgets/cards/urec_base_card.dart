import 'package:flutter/material.dart';

abstract class UrecBaseCard extends StatelessWidget {
  final EdgeInsets padding;
  final Color? backgroundColor;
  final double borderRadius;
  final double? width;
  final double? height;
  final VoidCallback? onTap;

  const UrecBaseCard({
    super.key,
    this.padding = const EdgeInsets.all(8.0), // Card's padding
    this.backgroundColor, // The background color of the card if provided
    this.borderRadius = 12.0, // The cards border radius
    this.width, // The width of the card
    this.height,  // The height of the card
    this.onTap, // Navigational component of the card
  });

  // Abstract method to build the child widget, which will be implemented by subclasses
  Widget buildChild(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius),
            boxShadow: backgroundColor != null
                ? [
                    BoxShadow(
                      color: backgroundColor!.withOpacity(0.5),
                      blurRadius: 6,
                      offset: const Offset(0, 4),
                    ),
                  ]
                : null,
          ),
          child: buildChild(context),
        ),
      ),
    );
  }
}