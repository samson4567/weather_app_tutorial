import 'package:flutter/material.dart';
import 'package:weather_app_tutorial/views/gradient.dart';
import 'package:weather_app_tutorial/views/hourly_forecast.dart';
import 'package:weather_app_tutorial/views/weekly_forecast.dart';

import '/constants/app_colors.dart';
import '/constants/text_styles.dart';
import '/extensions/datetime.dart';

class ForecastReportScreen extends StatelessWidget {
  const ForecastReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
      children: [
        // Page Title
        const Align(
          alignment: Alignment.center,
          child: Text(
            'Forecast Report',
            style: TextStyles.h1,
          ),
        ),

        const SizedBox(height: 40),

        // Today's date
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Today',
              style: TextStyles.h2,
            ),
            Text(
              DateTime.now().dateTime,
              style: TextStyles.subtitleText,
            ),
          ],
        ),

        const SizedBox(height: 20),

        // Today's forecast
        const HourlyForecastView(),

        const SizedBox(height: 20),

        // Next Forecast
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Next Forecast',
              style: TextStyles.h2,
            ),
            Icon(
              Icons.calendar_month_rounded,
              color: AppColors.white,
            ),
          ],
        ),

        const SizedBox(height: 30),

        // Weekly forecast
        const WeeklyForecastView(),
      ],
    );
  }
}
