import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      // height: 80, // Adjusted to match the design
      // padding: EdgeInsets.only(left: 0, right: 0, top: 12), // Adding padding to the content
      // decoration: BoxDecoration(
      //   color: Color(0xFFF8F8F8), // Background color matching the image
      //   borderRadius: BorderRadius.circular(4), // Rounded corners
      //   border: Border.all(
      //     color: Colors.grey.shade300,
      //     width: 0.5,
      //   ),
      // ),
      child: Padding(
        padding: EdgeInsets.only(left: 0, right: 0, top: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.directions_walk, color: Colors.green, size: 20),
                SizedBox(width: 4),
                Text(
                  "Steps",
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
                ),
              ],
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                "19,124",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            LinearProgressIndicator(
              value: 0.95,
              backgroundColor: Colors.green.shade100,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
              minHeight: 4, // Thickness of the progress bar
            ),
          ],
        ),
      ),
    );
  }
}
