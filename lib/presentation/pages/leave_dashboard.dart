import 'package:flutter/material.dart';
import 'package:hrattendanceapp/common/color.dart';
import 'package:hrattendanceapp/presentation/widgets/leave_dashboard_widgets/summary_section.dart';
import 'package:hrattendanceapp/presentation/widgets/leave_dashboard_widgets/tab_bar.dart';

class LeaveDashboard extends StatelessWidget {
  const LeaveDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: isDarkMode(context)
            ? Colors.black
            : const Color.fromARGB(255, 233, 230, 230),
        appBar: AppBar(
           backgroundColor: isDarkMode(context) ? Colors.black : Colors.white,
          foregroundColor: isDarkMode(context) ? Colors.white : Colors.black,
        
          elevation: 0,
          title: const Text(
            "All Leaves",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.add_box_outlined,  ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.settings, ),
              onPressed: () {},
            ),
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 10),
              SummarySection(),
              // Tab Bar
              TabBarForLeaves()
            ],
          ),
        ),
      ),
    );
  }
}
