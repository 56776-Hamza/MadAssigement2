import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 6 Captioned images required for the About Screen (Pakistani Food Gallery)
    final List<Map<String, String>> gridItems = [
      {'image': 'assets/images/food_1.jpg', 'caption': 'Hyderabadi Biryani'},
      {'image': 'assets/images/food_2.jpg', 'caption': 'Mutton Karahi'},
      {'image': 'assets/images/food_3.jpg', 'caption': 'Beef Nihari'},
      {'image': 'assets/images/food_4.jpg', 'caption': 'BBQ Seekh Kebab'},
      {'image': 'assets/images/food_5.jpg', 'caption': 'Samosa & Snacks'},
      {'image': 'assets/images/food_6.jpg', 'caption': 'Traditional Sweets'},
    ];

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: const Text('Food Gallery', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.deepOrange.shade900,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          // GridView showing exactly 6 items as required by assignment
          itemCount: gridItems.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            return Card(
              elevation: 6,
              shadowColor: Colors.black26,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 4,
                    child: Image.asset(
                      gridItems[index]['image']!,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => const Icon(Icons.restaurant, size: 50, color: Colors.deepOrange),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.white,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        gridItems[index]['caption']!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
