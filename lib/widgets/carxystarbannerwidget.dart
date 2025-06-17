import 'package:flutter/material.dart';

class CrazyStarsBanner extends StatelessWidget {
  const CrazyStarsBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        decoration: BoxDecoration(
          // REPLACED 'color' WITH 'gradient'
          gradient: const LinearGradient(
            begin: Alignment.topCenter, // Start the gradient from the top center
            end: Alignment.bottomCenter, // End the gradient at the bottom center
            colors: [
              // Slightly darker green for the top
            const Color.fromARGB(255, 90, 170, 14),// Your current primary green
              // A slightly lighter shade of green for the bottom
              Color(0xFF66BB6A), // A slightly lighter green (you can adjust this)
            ],
          ),
          borderRadius: BorderRadius.circular(30), // Highly rounded corners
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Left side: Tiger image with green circular border
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFFDFF6D4),
                  width: 3,
                ),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/icon/download.png', // Replace with your tiger image path
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(width: 15),

            // Middle section: Stars, progress bar, and description
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // "0 CRAZY Stars" text with star icon
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        '0 CRAZY Stars',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 2),

                      Icon(Icons.star,color: Color(0xFFFFD700),)
                      // Image.asset(
                      //   'assets/icons/star_icon.png', // Ensure this is the correct path for the star
                      //   width: 20,
                      //   height: 20,
                      // ),
                    ],
                  ),
                  const SizedBox(height: 5),

                  // Progress Bar
                  Container(
                    width: double.infinity,
                    height: 6,
                    decoration: BoxDecoration(
                      color: const Color(0xFF388E3C), // Darker green for the bar's background
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 10, // Simulated progress
                        height: 6,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),

                  // "Join CRAZY CUB, an exclusive loyalty and reward..." text
                  const Text(
                    'Join CRAZY CUB, an exclusive loyalty and reward program.',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),

            // Right side: Arrow icon
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}