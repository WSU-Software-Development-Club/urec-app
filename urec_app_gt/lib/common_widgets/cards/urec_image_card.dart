import 'package:flutter/material.dart';
import 'package:urec_app_gt/common_widgets/cards/urec_base_card.dart';

class UrecImageCard extends UrecBaseCard {
  final String title;
  final String? imageUrl;
  final bool showIcon;

  const UrecImageCard({
    super.key,
    required this.title,  // Title of the card
    required double super.width,  // Width of the card
    this.imageUrl,  // The card's image
    this.showIcon = false,  // The arrow icon in the top right of the card
    super.onTap,  // Navigational component of the card
  });

  @override
  Widget buildChild(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          // Background image if provided
          if (imageUrl != null)
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imageUrl!,
                fit: BoxFit.fill,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey,
                    child: const Center(child: Text("Image not available")),
                  );
                },
              ),
            ),
          // Title at the bottom of the card
          Positioned(
            bottom: 12,
            left: 12,
            right: 12,
            child: Align(
              alignment:
                  Alignment.bottomCenter,
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Optional icon in the top right corner
          if (showIcon)
            const Positioned(
              top: 10,
              right: 10,
              child: Icon(
                Icons.arrow_forward_sharp,
                color: Colors.white,
                size: 28,
              ),
            ),
        ],
      ),
    );
  }
}