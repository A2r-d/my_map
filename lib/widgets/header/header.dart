import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_map/widgets/header/balance_card.dart';
import 'package:my_map/widgets/header/circle_icon_button.dart';
import 'package:my_map/constants/my_icons_data.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleIconButton(
          iconData: MyIconsData.user,
        ),
        BalanceCard(),
        CircleIconButton(
          iconData: MyIconsData.right,
        ),
      ],
    );
  }
}
