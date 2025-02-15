import 'package:flutter/material.dart';
import 'package:hrattendanceapp/common/color.dart';

class BuildActivityItem extends StatelessWidget {
const BuildActivityItem({ Key? key, required this.icon, required this.title, required this.date, required this.time, required this.status }) : super(key: key);
// IconData icon, String title, String date, String time, String status
final IconData icon;
final String title;
final String date;
final String time;
final String status;
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ListTile(
        tileColor: isDarkMode(context) ? const Color.fromARGB(255, 31, 35, 65) : Colors.white,
        selectedTileColor: isDarkMode(context) ? const Color.fromARGB(255, 31, 35, 65) : Colors.white,
        leading: Icon(icon, color: Colors.blue),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(date),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(time, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(status, style: const TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}