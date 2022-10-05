import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/trip.dart';

class TripCard extends StatelessWidget {
  final Trip trip;

  const TripCard({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(trip.time, textAlign: TextAlign.start,),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  trip!.origin.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(Icons.train),
                Text(
                  trip!.destination.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
