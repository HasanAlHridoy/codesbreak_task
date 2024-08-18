import 'package:flutter/material.dart';

class SliderCard extends StatefulWidget {
  @override
  _SliderCardState createState() => _SliderCardState();
}

class _SliderCardState extends State<SliderCard> {
  double _currentValue = 50;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300, // Width of the card
      padding: EdgeInsets.all(16), // Padding inside the card
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.grey.shade300,
          width: 0.5,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            offset: Offset(0, 2),
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.volume_up, color: Colors.orange, size: 24),
              SizedBox(width: 8),
              Text(
                "Volume",
                style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 16),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.orange, // Color of the active side of the slider
              inactiveTrackColor: Colors.orange.shade100, // Color of the inactive side
              trackHeight: 4.0, // Height of the slider track
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
              thumbColor: Colors.orange, // Color of the slider thumb
              overlayShape: RoundSliderOverlayShape(overlayRadius: 24.0),
              overlayColor: Colors.orange.withOpacity(0.2), // Color when thumb is active
            ),
            child: Slider(
              value: _currentValue,
              min: 0,
              max: 100,
              onChanged: (value) {
                setState(() {
                  _currentValue = value;
                });
              },
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "0",
                style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
              ),
              Text(
                "${_currentValue.toInt()}",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                "100",
                style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
