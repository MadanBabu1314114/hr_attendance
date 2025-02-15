import 'package:flutter/material.dart';
import 'package:hrattendanceapp/common/color.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({Key? key, required this.onTap}) : super(key: key);
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
         
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.group_sharp,
              color: !isDarkMode(context) ? Colors.black : Colors.white,
            ),
             const SizedBox(
               width: 10,
             ),
            Text(
              "Google",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: !isDarkMode(context) ? Colors.black : Colors.white),
            ),
          ],
        )),
      ),
    );
  }
}
