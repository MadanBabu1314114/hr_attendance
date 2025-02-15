import 'package:flutter/material.dart';

class SummarySection extends StatelessWidget {
  const SummarySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Leave Summary Cards
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildSummaryCard(
                "Leave Balance", "20", Colors.blue.shade50, Colors.blue),
            _buildSummaryCard(
                "Leave Approved", "2", Colors.green.shade50, Colors.green),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildSummaryCard(
                "Leave Pending", "4", Colors.teal.shade50, Colors.teal),
            _buildSummaryCard(
                "Leave Cancelled", "10", Colors.red.shade50, Colors.red),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );


  }

  Widget _buildSummaryCard(
      String title, String value, Color bgColor, Color borderColor) {
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
