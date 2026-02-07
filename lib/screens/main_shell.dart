import 'package:flutter/material.dart';
import 'home/home_screen.dart';

class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomeScreen(),
    Center(child: Text('Launch')),
    Center(child: Text('Outside')),
    Center(child: Text('Connect')),
    Center(child: Text('Memories')),
    Center(child: Text('Profile')),
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
