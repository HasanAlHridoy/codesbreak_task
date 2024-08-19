import 'package:codesbreak_task/presentation/common_widgets/custom_app_bar.dart';
import 'package:codesbreak_task/presentation/dashboard_screen/widgets/goal_card.dart';
import 'package:codesbreak_task/presentation/dashboard_screen/widgets/heart_rate_card.dart';
import 'package:codesbreak_task/presentation/dashboard_screen/widgets/preogress_card.dart';
import 'package:codesbreak_task/presentation/dashboard_screen/widgets/search_widget.dart';
import 'package:codesbreak_task/presentation/dashboard_screen/widgets/slider_card.dart';
import 'package:codesbreak_task/presentation/dashboard_screen/widgets/steps_and_sleep_card.dart';
import 'package:codesbreak_task/utils/color_constants.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          children: [SearchWidget(), _buildStatisticSection(), SliderCard(),GoalCard()],
        ),
      ),
    );
  }
}

Widget _buildStatisticSection() {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.all(10),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Your Statistics'),
            TextButton(
              onPressed: () {},
              child: Text(
                'See All',
                style: TextStyle(color: AppColors.primaryColor),
              ),
            )
          ],
        ),
        ProgressCard(),
        Row(
          children: [
            Expanded(
              child: Column(
                children: [StepsAndSleepCard(), StepsAndSleepCard()],
              ),
            ),
            Expanded(child: HeartRateCard())
          ],
        )
      ],
    ),
  );
}
