import 'package:flutter/material.dart';

class RestaurantSection extends StatelessWidget {
  final String title;
  final bool viewAll;

  const RestaurantSection({
    super.key,
    required this.title,
    this.viewAll = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Row for "Restaurant near you" title and "View all ->"
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Title color is black
                ),
              ),
              if (viewAll)
                TextButton(
                  onPressed: () {
                    // Implement navigation to view all restaurants
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero, // Remove default text button padding
                    minimumSize: Size.zero, // Remove default minimum size
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Shrink tap area
                  ),
                  child: const Row(
                    children: [
                      Text(
                        'View all',
                        style: TextStyle(
                          color: Color(0xFF67B043), // Specific green color for View all
                          fontSize: 14, // Adjusted font size
                        ),
                      ),
                      SizedBox(width: 4), // Small space between text and arrow
                      Icon(
                        Icons.arrow_forward,
                        color: Color(0xFF67B043), // Specific green color for arrow
                        size: 16,
                      ),
                    ],
                  ),
                ),
            ],
          ),
          const SizedBox(height: 16), // Space between title row and res

          // Horizontal List of Restaurant Cards
          SizedBox(
            height: 230, // Adjusted height to accommodate the card content
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5, // Example: showing 5 restaurants
              itemBuilder: (context, index) {
                // Dummy data to replicate the restaurants in the image
                String restaurantName;
                String rating;
                String reviewCount;
                String deliveryTime;
                String imageUrl;

                if (index == 0) {
                  restaurantName = 'Shahjaha Resturent';
                  rating = '5.45';
                  reviewCount = '(11+ ratings)';
                  deliveryTime = 'N/A';
                  // Use a specific image for KFC
                  imageUrl = 'https://res.cloudinary.com/dhl8hhlsx/image/upload/v1724745953/Restaurants/yz7zax3uaak33eg9rpid.jpg'; // Example KFC image
                } else {
                  restaurantName = 'Restaurant ${index + 1}';
                  rating = '4.${(index + 1) * 2}';
                  reviewCount = '(${index * 5}+ ratings)';
                  deliveryTime = '${15 + index * 5} min';
                  // Use a generic image for other restaurants
                  imageUrl = 'https://res.cloudinary.com/dhl8hhlsx/image/upload/v1724745953/Restaurants/rvovniy3bmjyzsburlp5.jpg'; // Generic restaurant image
                }

                return Container(
                  width: 280,
                  margin: const EdgeInsets.only(right: 16), 
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15), 
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                 
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(15), 
                        ),
                        child: Image.network(
                          imageUrl,
                          height: 150,
                          width: double.infinity, 
                          fit: BoxFit.cover,
                        ),
                      ),
                     
                      Padding(
                        padding: const EdgeInsets.all(12.0), 
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Restaurant Name
                            Text(
                              restaurantName,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold, 
                                color: Colors.black,
                              ),
                              maxLines: 1, 
                              overflow: TextOverflow.ellipsis, 
                            ),
                            const SizedBox(height: 4), 
                     
                            Row(
                              children: [
                                const Icon(Icons.star, color: Colors.orange, size: 16), // Star icon
                                const SizedBox(width: 4),
                                Text(
                                  rating,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                  ),
                                ),
                                Text(
                                  reviewCount,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(width: 8), // Space before clock icon
                                const Icon(Icons.access_time, color: Colors.grey, size: 16), // Clock icon
                                const SizedBox(width: 4),
                                Text(
                                  deliveryTime,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}