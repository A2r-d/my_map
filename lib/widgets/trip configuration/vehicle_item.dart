import 'package:flutter/material.dart';

class VehicleItem extends StatelessWidget {
  final Image image;
  final String text;
  final bool isSelected;
  final double width;
  final double height;

  const VehicleItem({
    super.key,
    required this.image,
    required this.text,
    required this.isSelected,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
          child: CircleAvatar(
            backgroundColor: isSelected
                ? Theme.of(context).highlightColor
                : Theme.of(context).shadowColor,
            radius: 40,
            child: CircleAvatar(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              radius: 37,
              child: CircleAvatar(
                backgroundColor: Theme.of(context).cardColor,
                radius: 35,
                child: SizedBox(
                  width: this.width,
                  height: this.height,
                  child: ClipOval(
                    child: image,
                  ),
                ),
              ),
            ),
          ),
        ),
        Text(
          text,
          style: isSelected
              ? Theme.of(context).textTheme.bodyLarge
              : Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
