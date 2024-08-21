import 'package:flutter/material.dart';
import 'package:second_task/views/widget/activity_card.dart';

class PastBookingHistoryList extends StatelessWidget {
  const PastBookingHistoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ActivityCard(isPast:true,),
          ActivityCard(isPast: true,),
        ],
      ),
    );
  }
}
