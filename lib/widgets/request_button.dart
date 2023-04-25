import 'package:flutter/material.dart';

class RequestButton extends StatelessWidget {
  const RequestButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      child: Text(
        'درخواست اسنپ اکو',
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
