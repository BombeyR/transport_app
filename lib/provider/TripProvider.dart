import 'package:flutter/foundation.dart';
import 'package:transport_app/models/location.dart';

import '../models/trip.dart';

class TripProvider with ChangeNotifier {
  final List<Trip> _trips = [
    Trip(
      id: '1',
      origin: Location(id: "1", name: 'Erfurt Hbf'),
      destination: Location(id: "2", name: 'Munich Hbf'),
      time: '6th Oct 2022, 14:26',
    ),
    Trip(
      id: '2',
      origin: Location(id: '3', name: 'Berlin Hbf'),
      destination: Location(id: "2", name: 'Munich Hbf'),
      time: '9th Oct 2022, 20:26',
    ),
    Trip(
      id: '3',
      origin: Location(id: "3", name: 'Munich Hbf'),
      destination: Location(id: "4", name: 'Bonn Hbf'),
      time: '6th Oct 2022, 19:26',
    ),
    Trip(
      id: '4',
      origin: Location(id: "5", name: 'Bremen Hbf'),
      destination: Location(id: "2", name: 'Munich Hbf'),
      time: '6th Oct 2022, 14:26',
    ),
  ];

  List<Trip> get getTrips {
    return _trips;
  }
}
