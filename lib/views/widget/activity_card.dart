import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key, required this.isPast});
  final bool isPast;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/activity_image.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: const Text(
              'Program type',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: const Text(
              'Cancelation deadline: 10/3/2024',
              style: TextStyle(color: Color.fromARGB(255, 227, 14, 14)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Date'), Text('10/2/2024')],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text('Adults x2'),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text('children x1'),
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Pogram status', style: TextStyle(fontSize: 14)),
                Text('Paid',
                    style: TextStyle(color: Color.fromARGB(255, 227, 14, 14)))
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text('750 EGP',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
              ],
            ),
          ),
          if (!isPast)
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly, // Adjust spacing
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Edite',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 224, 112, 38),
                    shape: RoundedRectangleBorder(),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Print',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Cancel',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(),
                    backgroundColor: Color.fromARGB(255, 231, 44, 44),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
