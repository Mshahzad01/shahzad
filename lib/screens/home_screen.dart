// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:shahzad/widgets/carxystarbannerwidget.dart';
// import 'package:shahzad/widgets/resturentsection.dart';
// import '../widgets/image_slider.dart';
// import '../widgets/category_grid.dart';
// import '../widgets/product_section.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//  @override
// Widget build(BuildContext context) {
//   // Yeh sirf status bar ko style de raha hai
//   SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//     statusBarColor: Color.fromARGB(255, 90, 170, 14), // Green background
//     statusBarIconBrightness: Brightness.light, // White icons/text
//   ));

//   // Yeh return karega actual UI
//   return Scaffold(
//     backgroundColor: const Color.fromARGB(255, 90, 170, 14),

//     body: Column(
//       children: [
//         Container(
//           padding: const EdgeInsets.only(top: 40, left: 16, right: 16, bottom: 16),
//           color: const Color.fromARGB(255, 90, 170, 14),
//           child: Column(
//             children: [
//               const Row(
//                 children: [
//                   Icon(Icons.location_on_outlined, color: Colors.white,size: 25,),
//                   SizedBox(width: 8),
//                   Text(
//                     'Set your delivery address',
//                     style: TextStyle(color: Colors.white, fontSize: 15,fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 16),
//               Row(
//                 children: [
//                   Expanded(
//                     child: TextField(
//                       decoration: InputDecoration(
//                         filled: true,
//                         fillColor: Colors.white,
//                         hintText: 'Search your favorite pro...',
//                         hintStyle: TextStyle(color: Colors.grey),
//                         prefixIcon: const Icon(Icons.search_outlined, size: 28),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                           borderSide: BorderSide.none,
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                           borderSide: BorderSide.none,
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(30),
//                           borderSide: BorderSide.none,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     margin: const EdgeInsets.all(8),
//                     width: 50,
//                     height: 50,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       shape: BoxShape.circle,
//                       border: Border.all(color: Colors.grey.shade300),
//                     ),
//                     child: Center(
//                       child: SizedBox(
//                         width: 30,
//                         height: 30,
//                         child: Image.asset(
//                           "assets/icon/delevryicon.png",
//                           fit: BoxFit.contain,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         Expanded(
//           child: Container(
//             decoration: const BoxDecoration(
//               color: Colors.white,
          
//             ),
//             child: const SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                      SizedBox(height: 10),
//                   ImageSlider(),
                 
//                   CategoryGrid(),
//                   CrazyStarsBanner(),
//                   SizedBox(height: 16),
//                   ProductSection(title: 'Grocery', viewAll: true),
//                   SizedBox(height: 16),
//                   RestaurantSection(title: 'Restaurant near you', viewAll: true),
                  
//                   SizedBox(height: 16),
//                   ProductSection(title: 'Ice Cream', viewAll: true),
//                   SizedBox(height: 16),
//                   ProductSection(title: 'Beverages', viewAll: true),
//                   SizedBox(height: 16),
//                   ProductSection(title: 'Snacks', viewAll: true),
//                   SizedBox(height: 16),
//                   ProductSection(title: 'Home Decor', viewAll: true),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     ),
//     bottomNavigationBar: BottomNavigationBar(
//       type: BottomNavigationBarType.fixed,
//       selectedItemColor: Colors.green,
//       unselectedItemColor: Colors.grey,
//       items: const [
//         BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//         BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'Browse'),
//         BottomNavigationBarItem(icon: Icon(Icons.receipt), label: 'Orders'),
//         BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Inbox'),
//         BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
//       ],
//     ),
//   );
// }
// }


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shahzad/widgets/carxystarbannerwidget.dart';
import 'package:shahzad/widgets/resturentsection.dart';
import '../widgets/image_slider.dart';
import '../widgets/category_grid.dart';
import '../widgets/product_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Status bar style
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(255, 90, 170, 14),
      statusBarIconBrightness: Brightness.light,
    ));

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 90, 170, 14),

      // Custom AppBar using PreferredSize
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(140),
        child: Container(
          padding: const EdgeInsets.only(top: 40, left: 16, right: 16, bottom: 16),
          color: const Color.fromARGB(255, 90, 170, 14),
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
              const SizedBox(height: 16),
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
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              ImageSlider(),
               SizedBox(height: 16),
              CategoryGrid(),
              CrazyStarsBanner(),
              SizedBox(height: 16),
              ProductSection(title: 'Grocery', viewAll: true),
              SizedBox(height: 16),
              RestaurantSection(title: 'Restaurant near you', viewAll: true),
              SizedBox(height: 16),
              ProductSection(title: 'Ice Cream', viewAll: true),
              SizedBox(height: 16),
              ProductSection(title: 'Beverages', viewAll: true),
              SizedBox(height: 16),
              ProductSection(title: 'Snacks', viewAll: true),
              SizedBox(height: 16),
              ProductSection(title: 'Home Decor', viewAll: true),
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
