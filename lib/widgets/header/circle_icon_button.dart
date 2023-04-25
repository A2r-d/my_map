import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  final IconData iconData;

  const CircleIconButton({super.key, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 5,
        child: Icon(
          iconData,
          color: Theme.of(context).hintColor,
          size: 20,
        ),
      ),
    );
  }
}
