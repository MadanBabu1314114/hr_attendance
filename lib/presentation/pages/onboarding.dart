import 'package:flutter/material.dart';
import 'package:hrattendanceapp/common/color.dart';
import 'package:hrattendanceapp/presentation/widgets/onboarding_widgets/activity_section.dart';
import 'package:hrattendanceapp/presentation/widgets/onboarding_widgets/build_attendance_card.dart';
import 'package:hrattendanceapp/presentation/widgets/onboarding_widgets/date_scroll.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode(context)
          ? Colors.black
          : const Color.fromARGB(255, 233, 230, 230),
      appBar: AppBar(
        backgroundColor: isDarkMode(context) ? Colors.black : Colors.white,
        foregroundColor: isDarkMode(context) ? Colors.white : Colors.black,
        leading: CircleAvatar(
          foregroundImage: const NetworkImage(
              'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: isDarkMode(context) ? Colors.black : Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notification_important_rounded,
              color: isDarkMode(context) ? Colors.white : Colors.black,
            ),
          )
        ],
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Madan",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: isDarkMode(context) ? Colors.white : Colors.black),
            ),
            Text(
              "Lead UI/UX designer",
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: isDarkMode(context) ? Colors.white : Colors.black),
            )
          ],
        ),
      ),
      body: const Column(
        children: [
          DateScroll(),
         
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BuildAttendanceCard(
                  icon: Icons.login,
                  title: "Check In",
                  time: "10:20 am",
                  status: "On Time"),
              BuildAttendanceCard(
                  icon: Icons.logout,
                  title: "Check Out",
                  time: "07:00 pm",
                  status: "Go Home"),
            ],
          ),

          const SizedBox(height: 15),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BuildAttendanceCard(
                  icon: Icons.timer,
                  title: "Break Time",
                  time: "00:30 min",
                  status: "Avg Time 30 min"),
              BuildAttendanceCard(
                  icon: Icons.calendar_today,
                  title: "Total Days",
                  time: "28",
                  status: "Working Days"),
            ],
          ),
          ActivitySection()
        ],
      ),
        
    );
  }
}
