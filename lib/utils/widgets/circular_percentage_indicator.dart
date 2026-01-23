import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MyCircularPercentageIndicator extends StatelessWidget {
  final String name, amount;
  final String percentage;
  final Color color;
  final double data;

  const MyCircularPercentageIndicator({
    super.key,
    required this.name,
    required this.amount,
    required this.percentage,
    required this.color,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 20,
      circularStrokeCap: CircularStrokeCap.round,
      percent: data,
      progressColor: color,
      lineWidth: 7,
      reverse: true,
      backgroundColor: color.withValues(alpha: 0.2),
      animation: true,
      animationDuration: 500,
      restartAnimation: true,
      header: Padding(
        padding: EdgeInsets.only(bottom: 5),
        child: Text(
          name,
          style: TextStyle(
            color: Colors.black.withValues(alpha: 0.6),
            fontSize: 12,
          ),
        ),
      ),
      footer: Padding(
        padding: EdgeInsetsGeometry.only(top: 5),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: amount,
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
              TextSpan(
                text: " ($percentage)",
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
