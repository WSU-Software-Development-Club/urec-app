import 'package:flutter/material.dart';
import 'package:urec_app_gt/common_widgets/cards/urec_base_card.dart';

enum MatchStatus { notStarted, started, finished }

class UrecMatchesCard extends UrecBaseCard {
  final String date;
  final String score;
  final String team1LogoUrl;
  final String team2LogoUrl;
  final String team1Name;
  final String team2Name;
  final MatchStatus matchStatus;

  const UrecMatchesCard({
    super.key,
    required this.date, // Date of the match
    required this.score,  // Score of the match
    required this.team1LogoUrl, // Team 1's logo (left)
    required this.team2LogoUrl, // Team 2's logo (right)
    required this.team1Name,  // Team 1's name
    required this.team2Name,  // Team 2's name
    this.matchStatus = MatchStatus.notStarted, // The status of the match. Defaults to not started
    super.backgroundColor = const Color.fromRGBO(166, 15, 45, 1), // The background color of the card
    double width = 400, // Width of the card
    double height = 200,  // Height of the card
    super.onTap, // Navigational component of the match card
  }) : super(height: height, width: width);

  @override
  Widget buildChild(BuildContext context) {
    // Sets the status of the match
    String statusText;
    switch (matchStatus) {
      case MatchStatus.notStarted:
        statusText = "TBD";
        break;
      case MatchStatus.started:
        statusText = "Match Started";
        break;
      case MatchStatus.finished:
        statusText = "Game Finished";
        break;
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Team 1 Logo and Name
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset(
                team1LogoUrl,
                width: 75,
                height: 75,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              team1Name,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
        // Match Info
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Date of the match
            Text(
              date,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
            const SizedBox(height: 8),
            // Score of the match - only displays if the game has started
            if (matchStatus != MatchStatus.notStarted) ...[
              Text(
                score,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
            ],
            // Displays the status text of the match
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                statusText,
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
            )
          ],
        ),
        // Team 2 Logo and Name
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset(
                team2LogoUrl,
                width: 75,
                height: 75,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              team2Name,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ],
    );
  }
}