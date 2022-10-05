import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:transport_app/provider/TripProvider.dart';
import 'package:transport_app/screens/widgets/TripCard.dart';

class TripsScreen extends StatelessWidget {
  const TripsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final tripList = Provider.of<TripProvider>(context).getTrips;
    return Scaffold(
      body: ListView.builder(
          itemCount: tripList.length,
          itemBuilder: (context, index) {
        return TripCard(trip: tripList[index]);
      }),
    );
  }
}
