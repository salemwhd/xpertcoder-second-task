import 'package:flutter/material.dart';

class BookingHistoryAppbar extends StatelessWidget implements PreferredSizeWidget {
  const BookingHistoryAppbar({super.key});
  
   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Container(
            child: Image.asset(
              'assets/orange pay logo.png',
              fit: BoxFit.cover,
            ),
          ),
          Spacer(),
          Container(
            alignment: Alignment.centerRight,
            width: 120,
            height: 44,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(16)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.language,
                  color: Colors.orange,
                ),
                DropdownButton(
                  value: 'EN',
                  items: const [
                    DropdownMenuItem(
                      child: Text('English'),
                      value: 'EN',
                    ),
                    DropdownMenuItem(
                      child: Text('Arabic'),
                      value: 'AR',
                    ),
                  ],
                  onChanged: (newVlue) {},
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                  itemHeight: 60,
                  underline: const SizedBox(),
                ),
              ],
            ),
          ),
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: const Icon(Icons.notification_add_outlined),
          ),
        ],
      ),
    );
  }
}
