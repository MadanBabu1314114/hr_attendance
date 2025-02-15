import 'package:flutter/material.dart';

class BuildSummaryCard extends StatelessWidget {
const BuildSummaryCard({ Key? key, required this.title, required this.value, required this.bgColor, required this.borderColor }) : super(key: key);
// String title, String value, Color bgColor, Color borderColor

  final String title;
  final String value;
  final Color bgColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context){
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: borderColor),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            Text(value,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: borderColor)),
          ],
        ),
      ),
    );
  }
}