import 'package:flutter/material.dart';
import 'package:second_task/views/widget/booking_history_appbar.dart';
import 'package:second_task/views/widget/custom_bottom_navBar.dart';
import 'package:second_task/views/widget/custom_container.dart';
import 'package:second_task/views/widget/past_booking_history_list.dart';
import 'package:second_task/views/widget/upcoming_booking_history_list.dart';

class BookingHistoryScreen extends StatefulWidget {
  const BookingHistoryScreen({super.key});

  @override
  State<BookingHistoryScreen> createState() => _BookingHistoryScreenState();
}

class _BookingHistoryScreenState extends State<BookingHistoryScreen> {
  bool isPast = true;

  void onPressPast() {
    setState(() {
      isPast = true;
    });
  }

  void onPressUpcoming() {
    setState(() {
      isPast = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BookingHistoryAppbar(),
      bottomNavigationBar: const CustomBottomNavBar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomContainer(
                onPress: onPressPast,
                text: 'Past',
                color:
                    isPast ? Color.fromARGB(255, 224, 112, 38) : Colors.white,
              ),
              CustomContainer(
                onPress: onPressUpcoming,
                text: 'Upcoming',
                color:
                    isPast ? Colors.white : Color.fromARGB(255, 224, 112, 38),
              ),
            ],
          ),
          Expanded(
            child: isPast
                ? PastBookingHistoryList()
                : UpcomingBookingHistoryList(),
          ),
        ],
      ),
    );
  }
}



