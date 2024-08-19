import 'package:codesbreak_task/presentation/activity_screen/widgets/activities_widget.dart';
import 'package:codesbreak_task/presentation/activity_screen/widgets/burning_widget.dart';
import 'package:codesbreak_task/presentation/activity_screen/widgets/calendar_widget.dart';
import 'package:codesbreak_task/presentation/dashboard_screen/widgets/steps_and_sleep_card.dart';
import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity'),
      ),
      body: Column(
        children: [
          CalendarWidget(),
          BurningWidget(),
          ReusableCard(),
          Row(
            children: [
              Expanded(
                child: ReusableCard(),
              ),
              Expanded(
                child: ReusableCard(),
              ),
            ],
          ),
          ActivitiesWidget()
        ],
      ),
    );
  }
}
