import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    Center(child: Text('Home', style: TextStyle(fontSize: 22))),
    Center(child: Text('Launch', style: TextStyle(fontSize: 22))),
    Center(child: Text('Outside', style: TextStyle(fontSize: 22))),
    Center(child: Text('Connect', style: TextStyle(fontSize: 22))),
    Center(child: Text('Memories', style: TextStyle(fontSize: 22))),
    Center(child: Text('Profile', style: TextStyle(fontSize: 22))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.rocket_launch),
            label: 'Launch',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Outside',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: 'Connect'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Memories'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
