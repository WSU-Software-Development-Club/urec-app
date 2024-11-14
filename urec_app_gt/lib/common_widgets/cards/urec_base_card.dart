import 'package:flutter/material.dart';

abstract class UrecBaseCard extends StatelessWidget {
  final EdgeInsets padding;
  final Color backgroundColor;
  final double borderRadius;
  final double? width;
  final double? height;
  final VoidCallback? onTap;

  const UrecBaseCard({
    super.key,
    this.padding = const EdgeInsets.all(8.0),
    this.backgroundColor = Colors.black,
    this.borderRadius = 12.0,
    this.width,
    this.height,
    this.onTap,
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
          width: width, // Width set by each subclass instance
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(borderRadius),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: buildChild(context),
        ),
      ),
    );
  }
}

/*// Card variables
  final String title;
  final String? imageUrl;
  final bool showIcon;
  final Function()? onTap;
  final double? width;
  final Color? overlayColor;
  final List<Color>? overlayGradientColors;

  // UrecCard Constructor
  const UrecBaseCard({
    super.key,
    required this.title, // Card title
    this.imageUrl, // Image of the card
    this.showIcon = false, // Flag variable that shows the top right arrow of the card if true
    this.onTap, // Navigational component of the card
    this.width, // Sets the width of the card
    this.overlayColor, // Set solid overlay color
    this.overlayGradientColors, // Set gradient overlay colors
  });

  Widget buildCardContent(BuildContext context);
  */