import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalendarWidget extends StatelessWidget {
  final DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(7, (index) {
          DateTime currentDay = today.add(Duration(days: index - 3));
          bool isSelected = currentDay.day == today.day;
          return buildDateBox(
            DateFormat.E().format(currentDay), // Day of the week (e.g., Mon, Tue)
            DateFormat.d().format(currentDay), // Day of the month (e.g., 01, 02)
            isSelected,
          );
        }),
      ),
    );
  }

  Widget buildDateBox(String day, String date, bool isSelected) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: isSelected ? Colors.orange : Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: isSelected ? Colors.orange : Colors.grey,
          width: 0.3,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            day,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.orange,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            date,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.orange,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
