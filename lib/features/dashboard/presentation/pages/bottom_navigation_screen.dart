import 'package:flutter/material.dart';
import 'package:flightbuddy/features/dashboard/presentation/pages/bottom_screens/dashboard_screen.dart';
import 'package:flightbuddy/features/dashboard/presentation/widgets/appbar_title.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
    int _selectedIndex = 0;

  List <Widget> lstBottomScreen = [
    const DashboardScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: lstBottomScreen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book_outlined), label: "Menu"),
          BottomNavigationBarItem(icon: Icon(Icons.edit_outlined), label: "Write"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: "Profile")
        ],
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFF1565C0),
        unselectedItemColor: Color(0xFF90A4AE),
        currentIndex: _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex=index;
          });
        },
      ),
    );
  }
}