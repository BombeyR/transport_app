

import 'package:transport_app/models/location.dart';

class Trip {

  final String id;
  final Location destination;
  final Location origin;
  final String time;

  Trip({required this.id, required this.destination, required this.origin, required this.time});
}