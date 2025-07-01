import 'package:flutter/material.dart';
import 'package:shahzad/constant/appconstant.dart';
import 'package:shahzad/widgets/carxystarbannerwidget.dart';
import 'package:shahzad/widgets/resturentsection.dart';
import '../widgets/image_slider.dart';
import '../widgets/category_grid.dart';
import '../widgets/product_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appconstant.Appmaincolor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child: Container(
          padding: const EdgeInsets.only(top: 40, left: 16, right: 16, bottom: 16),
          color: Appconstant.Appmaincolor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(Icons.location_on_outlined, color: Colors.white, size: 25),
                  SizedBox(width: 8),
                  Text(
                    'Set your delivery address',
                    style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 16 ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Search your favorite pro...',
                        hintStyle: const TextStyle(color: Colors.grey),
                        prefixIcon: const Icon(Icons.search_outlined, size: 28),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Center(
                      child: SizedBox(
                        width: 30,
                        height: 30,
                        child: Image.asset(
                          "assets/icon/delevryicon.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // Body content
      body: Container(
         color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const ImageSlider(),
              const SizedBox(height: 16),
              const CategoryGrid(),
              const CrazyStarsBanner(),
              const SizedBox(height: 16),
              const ProductSection(title: 'Grocery', viewAll: true),
              const SizedBox(height: 16),
              RestaurantSection(title: 'Restaurant near you', viewAll: true),
              const SizedBox(height: 16),
              const ProductSection(title: 'Ice Cream', viewAll: true),
              const SizedBox(height: 16),
              const ProductSection(title: 'Beverages', viewAll: true),
              const SizedBox(height: 16),
              const ProductSection(title: 'Snacks', viewAll: true),
              const SizedBox(height: 16),
              const ProductSection(title: 'Home Decor', viewAll: true),
            ],
          ),
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'Browse'),
          BottomNavigationBarItem(icon: Icon(Icons.receipt), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
