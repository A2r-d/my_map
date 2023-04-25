import 'package:flutter/material.dart';

class OriginWidget extends StatelessWidget {
  const OriginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
              Radius.circular(30),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 4, 0, 0),
                child: Text(
                  'مبدأ',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(3, 2, 2, 2),
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: Theme.of(context).primaryColor,
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              flex: 100,
              child: Container(
                height: 15,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0.0, 2.0),
                      blurRadius: 1.0,
                      color: Color.fromRGBO(0, 0, 0, 0.7),
                    ),
                  ],
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 15,
              ),
            ),
            Expanded(
              flex: 25,
              child: Container(
                height: 15,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
