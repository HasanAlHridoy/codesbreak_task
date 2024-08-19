import 'package:flutter/material.dart';

class ActivitiesWidget extends StatelessWidget {
  const ActivitiesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Today, 08:10 AM',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                SizedBox(width: 8),
                Icon(Icons.local_fire_department, color: Colors.red, size: 16),
                SizedBox(width: 4),
                Text(
                  '238.2 cal',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey[200],
                  child: Icon(Icons.directions_run, color: Colors.orange, size: 40),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SizedBox(height: 8),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '2.32',
                              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                            TextSpan(
                              text: '/5.00 miles',
                              style: TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Jogging',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.pause_circle_filled,
                  color: Colors.orange,
                  size: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
