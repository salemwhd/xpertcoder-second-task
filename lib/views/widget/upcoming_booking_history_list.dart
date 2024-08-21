import 'package:flutter/material.dart';
import 'package:second_task/views/widget/activity_card.dart';

class UpcomingBookingHistoryList extends StatelessWidget {
  const UpcomingBookingHistoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ActivityCard(isPast: false,),
          ActivityCard(isPast: false,),
        ],
      ),
    );
  }
}
