import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 15 Items for the list (> 10 items requirement)
    final List<Map<String, String>> menuItems = [
      {'title': 'Special Chicken Biryani', 'price': 'Rs. 500', 'desc': 'Aromatic rice with spicy chicken'},
      {'title': 'Mutton Karahi', 'price': 'Rs. 1800', 'desc': 'Traditional wok-cooked mutton'},
      {'title': 'Beef Nihari', 'price': 'Rs. 700', 'desc': 'Slow-cooked beef stew'},
      {'title': 'Shahi Haleem', 'price': 'Rs. 400', 'desc': 'Lentils and meat slow-cooked'},
      {'title': 'Chicken Tikka', 'price': 'Rs. 450', 'desc': 'BBQ chicken leg piece'},
      {'title': 'Seekh Kebab', 'price': 'Rs. 600', 'desc': 'Charcoal grilled minced meat'},
      {'title': 'Chana Chaat', 'price': 'Rs. 200', 'desc': 'Spicy chickpea salad'},
      {'title': 'Samosa Chaat', 'price': 'Rs. 250', 'desc': 'Crispy samosa with yogurt & chutney'},
      {'title': 'Garlic Naan', 'price': 'Rs. 80', 'desc': 'Freshly baked flatbread with garlic'},
      {'title': 'Roghni Naan', 'price': 'Rs. 100', 'desc': 'Soft flatbread with sesame seeds'},
      {'title': 'Zeera Raita', 'price': 'Rs. 120', 'desc': 'Yogurt mixed with roasted cumin'},
      {'title': 'Fresh Salad', 'price': 'Rs. 100', 'desc': 'Cucumber, tomatoes, onions'},
      {'title': 'Gulab Jamun', 'price': 'Rs. 300', 'desc': 'Sweet milk dumplings in syrup'},
      {'title': 'Rasmalai', 'price': 'Rs. 400', 'desc': 'Cottage cheese in sweetened milk'},
      {'title': 'Mango Lassi', 'price': 'Rs. 250', 'desc': 'Refreshing yogurt based mango drink'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurant Menu', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.deepOrange.shade900,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 2,
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.orange.shade50,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.fastfood, color: Colors.deepOrange),
              ),
              title: Text(
                menuItems[index]['title']!,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              subtitle: Text(menuItems[index]['desc']!),
              trailing: Text(
                menuItems[index]['price']!,
                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 14),
              ),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Added ${menuItems[index]['title']} to cart!'),
                    backgroundColor: Colors.deepOrange,
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
