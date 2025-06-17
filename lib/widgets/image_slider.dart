// import 'package:flutter/material.dart';

// class ImageSlider extends StatefulWidget {
//   const ImageSlider({super.key});

//   @override
//   State<ImageSlider> createState() => _ImageSliderState();
// }

// class _ImageSliderState extends State<ImageSlider> {
//   final PageController _pageController = PageController();
//   int _currentPage = 0;

 
//   @override
//   void initState() {
//     super.initState();
//     _startAutoPlay();
//   }

//   void _startAutoPlay() {
//     Future.delayed(const Duration(seconds: 3), () {
//       if (mounted) {
//         final nextPage = (_currentPage + 1) % 3;
//         _pageController.animateToPage(
//           nextPage,
//           duration: const Duration(milliseconds: 800),
//           curve: Curves.fastOutSlowIn,
//         );
//         _startAutoPlay();
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(
//           height: 200,
//           child: PageView.builder(
//             controller: _pageController,
//             onPageChanged: (index) {
//               setState(() {
//                 _currentPage = index;
//               });
//             },
//             itemCount: 3,
//             itemBuilder: (context, index) {
//               final promo = [index];
//               return Container(
//                 margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(20),
//                   child: Stack(
//                     fit: StackFit.expand,
//                     children: [
//                       Image.asset(
//                         'assets/images/slider${index + 1}.png',
//                         fit: BoxFit.cover,
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                             begin: Alignment.topCenter,
//                             end: Alignment.bottomCenter,
//                             colors: [
//                               Colors.black.withOpacity(0.6),
//                               Colors.transparent,
//                             ],
//                           ),
//                         ),
//                       ),
                    
//                     ],
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      'assets/images/slider1.png',
      'assets/images/slider2.png',
      'assets/images/slider3.png',
    ];

    return CarouselSlider(
      options: CarouselOptions(
        height: 170.0,
        autoPlay: true,
        enlargeCenterPage: false, // 👈 side images ab choti nahi hongi
        viewportFraction: 0.9,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
      ),
      items: imagePaths.map((imagePath) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.3),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
