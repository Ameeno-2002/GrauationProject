import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class YourHomePage extends StatefulWidget {
  @override
  _YourHomePageState createState() => _YourHomePageState();
}

class _YourHomePageState extends State<YourHomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your App"),
      ),
      body: _getPage(currentIndex),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey.shade300,
        color: const Color.fromARGB(255, 199, 177, 246),
        items: <Widget>[
          Icon(Icons.home_filled, size: 30),
          Icon(Icons.storage_sharp, size: 30),
          Icon(Icons.notifications, size: 30),
          Icon(Icons.account_circle, size: 30),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });

          // Handle navigation item taps here
          _navigateToPage(index);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle the onPressed for the circular button
        },
        backgroundColor: const Color.fromARGB(255, 199, 177, 246),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _getPage(int index) {
    // Return the widget for the selected page
    switch (index) {
      case 0:
        return HomeScreen(); // Replace with your HomeScreen widget
      case 1:
        return StorageScreen(); // Replace with your StorageScreen widget
      // Add cases for other pages as needed
      default:
        return Container(); // Return an empty container for unknown index
    }
  }

  void _navigateToPage(int index) {
    // Navigate to the corresponding page using Navigator
    switch (index) {
      case 0:
        // You can use MaterialPageRoute or any other navigation method here
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => StorageScreen()),
        );
        break;
      // Add cases for other pages as needed
    }
  }
}

// Replace HomeScreen and StorageScreen with your actual page widgets.
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Text("Home Screen Content"),
      ),
    );
  }
}

class StorageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Storage"),
      ),
      body: Center(
        child: Text("Storage Screen Content"),
      ),
    );
  }
}
