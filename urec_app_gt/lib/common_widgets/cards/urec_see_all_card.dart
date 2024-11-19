import 'package:flutter/material.dart';
import 'package:urec_app_gt/common_widgets/cards/urec_base_card.dart';

class UrecSeeAllCard extends UrecBaseCard {
  const UrecSeeAllCard({
    super.key,
    required double super.width,  // Width of the card
    required double super.height, // Height of the card
    super.backgroundColor = const Color.fromRGBO(222, 227, 237, 1), // Card's background color
    super.onTap,  // Card's navigational component
  });

  @override
  Widget buildChild(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Circular icon with dots
        Container(
          width: 48.0,
          height: 48.0,
          decoration: const BoxDecoration(
            color: Colors.deepPurple,
            shape: BoxShape.circle,
          ),
          child: const Center(
            child: Icon(
              Icons.more_horiz, // Icon for three dots
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 8.0), // Spacing between the icon and text
        // "See All" text
        const Text(
          "See All",
          style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}