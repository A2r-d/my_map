import 'package:flutter/cupertino.dart';
import 'dart:math' as math;

import 'package:flutter/material.dart';

class TripOptionButton extends StatelessWidget {
  final String text;
  final IconData iconData;
  final int rotationAngel;

  const TripOptionButton({
    super.key,
    required this.text,
    required this.iconData,
    this.rotationAngel = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 6,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            width: 3,
          ),
          Transform.rotate(
            angle: (rotationAngel * math.pi) / 180,
            child: Icon(
              iconData,
              color: Theme.of(context).primaryColor,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
