import 'package:flutter/material.dart';
import 'package:hrattendanceapp/common/color.dart';

class BuildAttendanceCard extends StatelessWidget {
  const BuildAttendanceCard(
      {Key? key,
      required this.icon,
      required this.title,
      required this.time,
      required this.status})
      : super(key: key);
// IconData icon, String title, String time, String status
  final IconData icon;
  final String title;
  final String time;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: isDarkMode(context) ? Colors.white : Colors.grey.shade100,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: Colors.blue),
            const SizedBox(height: 10),
            Text(time,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Text(status, style: const TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
