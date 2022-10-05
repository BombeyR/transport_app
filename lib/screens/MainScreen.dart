import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transport_app/screens/BookScreen.dart';
import 'package:transport_app/screens/TripsScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final appBarItems = [
    const BottomNavigationBarItem(
        icon: Icon(Icons.train_outlined), label: "My Trips"),
    const BottomNavigationBarItem(icon: Icon(Icons.book_online), label: "Book"),
    const BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
  ];

  int _pageIndex = 0;

  final _pages = [
    const TripsScreen(),
    BookScreen(),
    const Center(child:Text("Coming soon...")),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text("Transport App")),
      body: _pages[_pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: appBarItems,
        currentIndex: _pageIndex,
        onTap: (idx){
          setState(() {
            _pageIndex = idx;
          });

        },
      ),
    );
  }
}
