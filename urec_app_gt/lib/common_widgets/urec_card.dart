import 'package:flutter/material.dart';

class UrecCard extends StatelessWidget {
  // Card variables
  final String title;
  final String imageUrl;
  final bool showIcon;
  final Function()? onTap;
  final double? width;

  // UrecCard Constructor
  const UrecCard({
    super.key,
    required this.title, // Card title
    required this.imageUrl, // Image of the card
    this.showIcon = false, // Flag variable that shows the top right arrow of the card if true
    this.onTap, // Navigational component of the card
    this.width, // Sets the width of the card
  });

  // UrecCard build function. Handles the cards appearance and functionality
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: SizedBox(
          width: width,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                // Background image
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey,
                        child: const Center(child: Text("Image not available")),
                      );
                    }
                  ),
                ),
                // Overlay gradient
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Title
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                // Icon if needed
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
          ),
        ),
      ),
    );
  }
}