import 'package:flutter/material.dart';
import 'package:hrattendanceapp/presentation/widgets/onboarding_widgets/build_activity_item.dart';

class ActivitySection extends StatelessWidget {
  const ActivitySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Your Activity",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {},
              child:
                  const Text("View All", style: TextStyle(color: Colors.blue)),
            ),
          ],
        ),
        const SizedBox(height: 10),
        // _buildActivityItem(
        //     Icons.login, "Check In", "April 17, 2023", "10:00 am", "On Time"),
        // _buildActivityItem(
        //     Icons.timer, "Break In", "April 17, 2023", "12:30 am", "On Time"),

        const BuildActivityItem(
          icon: Icons.login,
          title: "Check In",
          date: "April 17, 2023",
          time: "10:00 am",
          status: "On Time",
        ),
        const BuildActivityItem(
          icon: Icons.timer,
          title: "Break In",
          date: "April 17, 2023",
          time: "12:30 am",
          status: "On Time",
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
