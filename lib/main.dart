import 'package:dashboard/screen/automation/automation_screen.dart';
import 'package:dashboard/screen/device/device_screen.dart';
import 'package:dashboard/screen/notification/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(const NavigationBarApp());

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const NavigationExample(),
    );
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int _selectedIndex = 0;

  final List<Widget> pages = [Device(), Automation(), Notifi()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/box.svg',
              width: 24.0,
              height: 24.0,
            ),
            label: 'Device',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/sun.svg',
              width: 24.0,
              height: 24.0,
            ),
            label: 'Automation',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/notification-bing.svg',
              width: 24.0,
              height: 24.0,
            ),
            label: 'Notification',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
      ),
    );
  }
}
