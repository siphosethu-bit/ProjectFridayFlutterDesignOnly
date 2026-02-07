import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),

            // 🔍 Search Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 10),
                    Text(
                      'Search places, vibes or stories',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            // 👥 Stories title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Friends outside',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),

            const SizedBox(height: 12),

            // 👥 Stories Row
            SizedBox(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: const [
                  _StoryBubble(name: 'Alex'),
                  _StoryBubble(name: 'Jamie'),
                  _StoryBubble(name: 'Chris'),
                  _StoryBubble(name: 'Sam'),
                  _StoryBubble(name: 'Lebo'),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // 🗺️ Map title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'What’s happening nearby',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),

            const SizedBox(height: 12),

            // 🗺️ Mock Map
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                height: 280,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Stack(
                  children: const [
                    Center(
                      child: Text(
                        'Long Street, Cape Town',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),

                    // Fake pins
                    _MapPin(top: 80, left: 100, label: 'Busy • 80%'),
                    _MapPin(top: 140, left: 180, label: 'Chill • 40%'),
                    _MapPin(top: 60, left: 220, label: 'Packed • 95%'),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class _StoryBubble extends StatelessWidget {
  final String name;

  const _StoryBubble({required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: const LinearGradient(
                colors: [Colors.pinkAccent, Colors.orangeAccent],
              ),
            ),
            child: const Center(child: Icon(Icons.person, color: Colors.black)),
          ),
          const SizedBox(height: 6),
          Text(name, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}

class _MapPin extends StatelessWidget {
  final double top;
  final double left;
  final String label;

  const _MapPin({required this.top, required this.left, required this.label});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Column(
        children: [
          const Icon(Icons.location_on, color: Colors.pinkAccent, size: 32),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(label, style: const TextStyle(fontSize: 10)),
          ),
        ],
      ),
    );
  }
}
