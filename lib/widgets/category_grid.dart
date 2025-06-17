
import 'package:flutter/material.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> categories = [
      {'name': 'Grocery', 'image': 'assets/products/grocery.png'},
      {'name': 'Beverages', 'image': 'assets/products/Beverages.png'},
      {'name': 'Ice Cream', 'image': 'assets/products/icecream.png'},
      {'name': 'Pharmacy', 'image': 'assets/products/pharmacy.png'},
      {'name': 'Household', 'image': 'assets/products/household.png'},
      {'name': 'Pet Food', 'image': 'assets/products/petfood.png'},
      {'name': 'Alcohol', 'image': 'assets/products/alcohol.png'},
      {'name': 'Snacks', 'image': 'assets/products/snak.png'},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: 60,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 150,
                      width: 80,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 229, 247, 221),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    Positioned(
                      bottom: -20,
                      child: Image.asset(
                        categories[index]['image']!,
                        width: 80,
                        height: 80,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 18), // Image ke neeche space dena hoga due to bottom overflow
              Text(
                categories[index]['name']!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
