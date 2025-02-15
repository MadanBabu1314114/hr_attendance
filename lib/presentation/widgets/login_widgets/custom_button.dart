import 'package:flutter/material.dart';
import 'package:hrattendanceapp/common/color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.onTap, required this.text}) : super(key: key);
  final Function() onTap;
  final String text ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: isDarkMode(context) ? Colors.white : Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: isDarkMode(context) ? Colors.black : Colors.white),
          ),
        ),
      ),
    );
  }
}
