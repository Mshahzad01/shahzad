import 'package:flutter/material.dart';

class CrazyStarsBanner extends StatelessWidget {
  const CrazyStarsBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        decoration: BoxDecoration(
          
          gradient: const LinearGradient(
            begin: Alignment.topCenter, 
            end: Alignment.bottomCenter, 
            colors: [
              
            const Color.fromARGB(255, 90, 170, 14),
              
              Color(0xFF66BB6A), 
            ],
          ),
          borderRadius: BorderRadius.circular(20), 
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
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
                  'assets/icon/download.png', 
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(width: 15),

            
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '0 CRAZY Stars',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 2),

                      Icon(Icons.star,color: Color(0xFFFFD700),)
                   
                    ],
                  ),
                  const SizedBox(height: 5),
                  Container(
                    width: double.infinity,
                    height: 6,
                    decoration: BoxDecoration(
                      color: const Color(0xFF388E3C), 
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 10, 
                        height: 6,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
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