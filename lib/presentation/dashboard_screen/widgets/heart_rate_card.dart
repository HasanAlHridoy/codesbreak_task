import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HeartRateCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150, // Width to match the design
      height: 150, // Height to match the design
      // padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.grey.shade300,
          width: 0.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.favorite, color: Colors.orange, size: 20),
              SizedBox(width: 4),
              Text(
                "Heart rate",
                style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
              ),
            ],
          ),
          Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "88",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              SizedBox(width: 4),
              Text(
                "bpm",
                style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: LineChart(
              LineChartData(
                gridData: FlGridData(show: false),
                titlesData: FlTitlesData(show: false),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      FlSpot(0, 5),
                      FlSpot(1, 5.8),
                      FlSpot(2, 6.2),
                      FlSpot(3, 6.8),
                      FlSpot(4, 5.8),
                      FlSpot(5, 4),
                      FlSpot(6, 5),
                      FlSpot(7, 6),
                      FlSpot(7, 6),
                      FlSpot(9, 8),
                    ],
                    isCurved: true,
                    color: Colors.orange,
                    barWidth: 0.3,
                    isStrokeCapRound: true,
                    belowBarData: BarAreaData(
                      show: true,
                      color: Colors.orange.withOpacity(0.3),
                    ),
                    dotData: FlDotData(show: false),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
