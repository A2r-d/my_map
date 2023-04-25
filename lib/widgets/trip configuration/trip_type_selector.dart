import 'package:flutter/material.dart';
import 'package:my_map/constants/my_icons_data.dart';
import 'package:my_map/widgets/trip%20configuration/trip_option_button.dart';
import 'package:my_map/widgets/trip%20configuration/vehicle_selector.dart';

class TripTypeSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, 2.0),
            blurRadius: 1.0,
            color: Color.fromRGBO(0, 0, 0, 0.25),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: const Column(
        children: [
          Expanded(
            child: VehicleSelector(),
          ),
          Divider(color: Colors.grey),
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: TripOptionButton(
                    text: 'گزینه‌های سفر',
                    iconData: MyIconsData.tune,
                    rotationAngel: 90,
                  ),
                ),
                VerticalDivider(
                  color: Colors.grey,
                ),
                Expanded(
                  child: TripOptionButton(
                    text: 'کد تخفیف',
                    iconData: MyIconsData.ticket,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
