import 'package:flutter/material.dart';
import 'package:my_map/widgets/trip%20configuration/vehicle_item.dart';

class VehicleSelector extends StatefulWidget {
  const VehicleSelector({Key? key}) : super(key: key);

  @override
  State<VehicleSelector> createState() => _VehicleSelectorState();
}

class _VehicleSelectorState extends State<VehicleSelector> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        VehicleItem(
          image: Image.asset(
            'assets/images/echo-car.png',
          ),
          text: 'اسنپ! (به صرفه)',
          isSelected: true,
          width: 62,
          height: 62,
        ),
        VehicleItem(
          image: Image.asset(
            'assets/images/women-car.png',
          ),
          text: 'اسنپ! بانوان (ویژه خانم‌ها)',
          isSelected: false,
          width: 65,
          height: 65,
        ),
        VehicleItem(
          image: Image.asset(
            'assets/images/pickup.png',
          ),
          text: 'اسنپ! وانت (ویژه مرسولات)',
          isSelected: false,
          width: 100,
          height: 100,
        ),
        VehicleItem(
          image: Image.asset(
            'assets/images/motorcycle.png',
          ),
          text: 'اسنپ! بایک (ویژه مسافر)',
          isSelected: false,
          width: 70,
          height: 70,
        ),
      ],
    );
  }
}
