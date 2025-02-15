import 'package:flutter/material.dart';
import 'package:hrattendanceapp/common/color.dart';
import 'package:hrattendanceapp/presentation/pages/holiday_list_page.dart';
import 'package:hrattendanceapp/presentation/pages/leave_dashboard.dart';
import 'package:hrattendanceapp/presentation/pages/onboarding.dart';
import 'package:hrattendanceapp/presentation/pages/profile_page.dart';
import 'package:hrattendanceapp/presentation/pages/team_member_page.dart';

class MainScrollPage extends StatefulWidget {
  const MainScrollPage({Key? key}) : super(key: key);

  @override
  State<MainScrollPage> createState() => _MainScrollPageState();
}

class _MainScrollPageState extends State<MainScrollPage> {
  final PageController _pageController = PageController();

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(), // Smooth scrolling behavior
        children: const [
          Onboarding(),
          LeaveDashboard(),
          TeamMembersPage(),
          HolidayListPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: isDarkMode(context) ? Colors.black : Colors.white,
        selectedItemColor: isDarkMode(context) ? Colors.white : Colors.black,
        unselectedItemColor:
            isDarkMode(context) ? Colors.white70 : Colors.black54,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: "Calendar"),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.fingerprint, color: Colors.white)),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.beach_access), label: "Leave"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
