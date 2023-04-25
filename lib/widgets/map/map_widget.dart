import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:my_map/widgets/map/destination_widget.dart';
import 'package:my_map/widgets/map/origin_widget.dart';

import 'location_icon.dart';

class MapWidget extends StatefulWidget {
  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(35.7481909, 51.3999933),
        zoom: 12.7,
      ),
      nonRotatedChildren: [
        AttributionWidget.defaultWidget(
          source: 'OpenStreetMap contributors',
          onSourceTapped: null,
        ),
      ],
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: LatLng(35.7681909, 51.3999933),
              width: 24,
              height: 24,
              builder: (context) => const LocationIcon(),
            ),
            Marker(
              width: 92,
              height: 90,
              point: LatLng(35.7581909, 51.3894933),
              builder: (context) => const OriginWidget(),
            ),
            Marker(
              width: 92,
              height: 90,
              point: LatLng(35.7781909, 51.4039933),
              builder: (context) => const DestinationWidget(),
            ),
          ],
        ),
      ],
    );
  }
}
