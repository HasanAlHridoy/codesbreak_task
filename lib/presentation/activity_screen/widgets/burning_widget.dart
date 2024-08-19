import 'package:flutter/material.dart';

class BurningWidget extends StatelessWidget {
  final List<Activity> activities = [
    Activity(name: 'Jogging', percentage: 22, color: Colors.orange, icon: Icons.directions_run),
    Activity(name: 'Cycling', percentage: 50, color: Colors.blue, icon: Icons.directions_bike),
    Activity(name: 'Yoga', percentage: 13, color: Colors.red, icon: Icons.self_improvement),
    Activity(name: 'Others', percentage: 15, color: Colors.black, icon: Icons.more_horiz),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: activities.map((activity) => buildActivityRow(activity)).toList(),
    );
  }

  Widget buildActivityRow(Activity activity) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              activity.name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Icon(activity.icon, color: activity.color),
          SizedBox(width: 10),
          VerticalDivider(color: Colors.grey, thickness: 1, width: 20),
          SizedBox(width: 10),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: LinearProgressIndicator(
                    value: activity.percentage / 100,
                    backgroundColor: activity.color.withOpacity(0.2),
                    color: activity.color,
                    minHeight: 8,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  '${activity.percentage}%',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: activity.color,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Activity {
  final String name;
  final int percentage;
  final Color color;
  final IconData icon;

  Activity({required this.name, required this.percentage, required this.color, required this.icon});
}
