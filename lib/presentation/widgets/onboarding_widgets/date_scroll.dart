import 'package:flutter/material.dart';
import 'package:hrattendanceapp/common/color.dart';

class DateScroll extends StatelessWidget {
  const DateScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const dateMap = [
      {
        "date": "01",
        "day": "Mon",
      },
      {
        "date": "02",
        "day": "Tue",
      },
      {
        "date": "03",
        "day": "Wed",
      },
      {
        "date": "04",
        "day": "Thu",
      },
      {
        "date": "05",
        "day": "Fri",
      },
      {
        "date": "06",
        "day": "Sat",
      },
      {
        "date": "07",
        "day": "Sun",
      },
      {
        "date": "08",
        "day": "Mon",
      },
      {
        "date": "09",
        "day": "Tue",
      },
      {
        "date": "10",
        "day": "Wed",
      },
      {
        "date": "11",
        "day": "Thu",
      },
      {
        "date": "12",
        "day": "Fri",
      },
      {
        "date": "13",
        "day": "Sat",
      },
      {
        "date": "14",
        "day": "Sun",
      },
    ];
    return Container(
      height: 100,
      child: ListView.builder(
        itemCount: dateMap.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        addRepaintBoundaries: true,
        itemBuilder: (context, index) {
          return Container(
            width: 100,
            height: 80,
            margin: const EdgeInsets.all(3),
            padding: const EdgeInsets.all(5),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: isDarkMode(context) ? Colors.black : Colors.white,
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    dateMap[index]["date"].toString(),
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color:
                              isDarkMode(context) ? Colors.white : Colors.black,
                        ),
                  ),
                  Text(
                    dateMap[index]["day"].toString(),
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: isDarkMode(context)
                              ? Colors.white
                              : const Color.fromARGB(255, 59, 58, 58),
                        ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
