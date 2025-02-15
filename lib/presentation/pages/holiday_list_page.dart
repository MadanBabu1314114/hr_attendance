import 'package:flutter/material.dart';
import 'package:hrattendanceapp/common/color.dart';

class HolidayListPage extends StatelessWidget {
  const HolidayListPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> holidays = [
      {"date": "January 26, 2023", "day": "Thursday", "name": "Republic Day"},
      {"date": "March 08, 2023", "day": "Friday", "name": "Holi"},
      {"date": "August 15, 2023", "day": "Tuesday", "name": "Independence Day"},
      {"date": "August 30, 2023", "day": "Wednesday", "name": "Raksha Bandhan"},
      {"date": "September 07, 2023", "day": "Thursday", "name": "Janmashtami"},
      {"date": "November 12, 2023", "day": "Sunday", "name": "Diwali"},
    ];

    return Scaffold(
         backgroundColor: isDarkMode(context)
          ? Colors.black
          : const Color.fromARGB(255, 233, 230, 230),
      appBar: AppBar(
             backgroundColor: isDarkMode(context) ? Colors.black : Colors.white,
        foregroundColor: isDarkMode(context) ? Colors.white : Colors.black,
        
        title: const Text("Holiday List"),
        centerTitle: true,
         
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: holidays.length,
          itemBuilder: (context, index) {
            var holiday = holidays[index];
            return Container(
              margin: const EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 5,
                  )
                ],
              ),
              child: ListTile(
                leading: Icon(Icons.calendar_today, color: Colors.black54),
                title: Text(holiday["date"]!,
                    style: TextStyle(color: Colors.grey, fontSize: 14)),
                subtitle: Text(holiday["name"]!,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                trailing: Text(holiday["day"]!,
                    style: TextStyle(color: Colors.black54, fontSize: 14)),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
            );
          },
        ),
      ),
    );
  }
}
