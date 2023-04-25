import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_map/bloc/time_bloc.dart';

class BalanceCard extends StatefulWidget {
  const BalanceCard({Key? key}) : super(key: key);

  @override
  State<BalanceCard> createState() => _BalanceCardState();
}

class _BalanceCardState extends State<BalanceCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final timeBloc = BlocProvider.of<TimeBloc>(context);
    return Container(
      width: 150,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            offset: Offset(0.0, 2.0),
            blurRadius: 1.0,
            color: Color.fromRGBO(0, 0, 0, 0.25),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<TimeBloc, String>(
              bloc: BlocProvider.of<TimeBloc>(context),
              builder: (context, time) {
                return Text(time,
                    style: Theme.of(context).textTheme.displayLarge);
              }),
          const SizedBox(width: 3),
          Text('ساعت', style: Theme.of(context).textTheme.displaySmall),
        ],
      ),
    );
  }
}
