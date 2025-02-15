import 'package:flutter/material.dart';
import 'package:hrattendanceapp/common/color.dart';

class TextFieldLogin extends StatelessWidget {
  const TextFieldLogin(
      {Key? key, required this.controller, required this.labelText})
      : super(key: key);
  final TextEditingController controller;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(3),
        decoration:  ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
            side: BorderSide(
              color: isDarkMode(context) ? Colors.white : Colors.blue
            )
          ),
        ),
        child: TextField(
          controller: controller,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: isDarkMode(context) ? Colors.white : Colors.blue
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: labelText,
            labelStyle: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: isDarkMode(context) ? Colors.white : Colors.blue
            )
          ),
        ),
      ),
    );
  }
}
