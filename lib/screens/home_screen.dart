import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      body: CustomScrollView(
        slivers: [
          // BONUS TASK: SliverAppBar
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            backgroundColor: Colors.deepOrange.shade900,
            iconTheme: const IconThemeData(color: Colors.white),
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'Welcome to HR Foods',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  shadows: [Shadow(blurRadius: 4, color: Colors.black87, offset: Offset(1, 1))],
                ),
              ),
              background: Image.asset(
                'assets/images/home_bg.jpg', 
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.3),
                colorBlendMode: BlendMode.darken,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Experience the Taste of Pakistan',
                      style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.deepOrange),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Hamza Rahim Food Restaurant brings you the finest selection of ultra-premium traditional spices and masterful culinary techniques. Enjoy an unforgettable dining experience in a luxurious environment.',
                      style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Expanded(
                          child: _buildFeatureCard(Icons.star, 'Top Rated', 'Voted #1 Cafe in Town'),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: _buildFeatureCard(Icons.local_shipping, 'Fast Delivery', 'Hot & fresh to you'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: _buildFeatureCard(Icons.eco, '100% Fresh', 'Organic ingredients'),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: _buildFeatureCard(Icons.event_seat, 'Dine-in', 'Luxury seating'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 300), // Extra space to demonstrate the Sliver Scroll effect
                    const Center(
                      child: Text('Keep Scrolling for more...', style: TextStyle(color: Colors.grey)),
                    ),
                    const SizedBox(height: 300),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureCard(IconData icon, String title, String subtitle) {
    return Card(
      elevation: 4,
      shadowColor: Colors.deepOrange.withOpacity(0.2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(icon, size: 40, color: Colors.deepOrange),
            const SizedBox(height: 12),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 4),
            Text(subtitle, textAlign: TextAlign.center, style: const TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
