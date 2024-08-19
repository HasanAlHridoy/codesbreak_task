import 'package:codesbreak_task/presentation/goal_screen/widgets/fitness_goal_card_widget.dart';
import 'package:flutter/material.dart';

class GoalScreen extends StatelessWidget {
  const GoalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity'),
      ),
      body: Column(
        children: [
          FitnessGoalCard(),
        ],
      ),
    );
  }
}
