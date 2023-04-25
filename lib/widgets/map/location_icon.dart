import 'package:flutter/material.dart';

class LocationIcon extends StatelessWidget {
  const LocationIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 8,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
