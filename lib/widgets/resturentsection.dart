import 'package:flutter/material.dart';
import 'package:shahzad/model/restaurant_model.dart';



class RestaurantSection extends StatelessWidget {
  final String title;
  final bool viewAll;

  RestaurantSection({super.key, required this.title, this.viewAll = false});

  final List<RestaurantModel> dummyRestaurants = [
    RestaurantModel(
      name: 'Shahjaha Restaurant',
      rating: '5.4',
      reviewCount: '(11+ ratings)',
      deliveryTime: 'N/A',
      imageUrl: 'https://res.cloudinary.com/dhl8hhlsx/image/upload/v1724745953/Restaurants/yz7zax3uaak33eg9rpid.jpg',
    ),
    RestaurantModel(
      name: 'Food Point',
      rating: '4.2',
      reviewCount: '(25+ ratings)',
      deliveryTime: '20 min',
      imageUrl: 'https://res.cloudinary.com/dhl8hhlsx/image/upload/v1724745953/Restaurants/rvovniy3bmjyzsburlp5.jpg',
    ),
    RestaurantModel(
      name: 'Pizza Town',
      rating: '4.0',
      reviewCount: '(30+ ratings)',
      deliveryTime: '25 min',
      imageUrl: 'https://res.cloudinary.com/dhl8hhlsx/image/upload/v1724745956/Restaurants/tyoovyhkhrst91uznu5d.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              if (viewAll)
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: const Row(
                    children: [
                      Text(
                        'View all',
                        style: TextStyle(
                          color: Color(0xFF67B043),
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(
                        Icons.arrow_forward,
                        color: Color(0xFF67B043),
                        size: 16,
                      ),
                    ],
                  ),
                ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 230,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dummyRestaurants.length,
              itemBuilder: (context, index) {
                final restaurant = dummyRestaurants[index];
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
                          restaurant.imageUrl,
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
                            Text(
                              restaurant.name,
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
                                const Icon(Icons.star, color: Colors.orange, size: 16),
                                const SizedBox(width: 4),
                                Text(
                                  restaurant.rating,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
                                  ),
                                ),
                                Text(
                                  restaurant.reviewCount,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                const Icon(Icons.access_time, color: Colors.grey, size: 16),
                                const SizedBox(width: 4),
                                Text(
                                  restaurant.deliveryTime,
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
