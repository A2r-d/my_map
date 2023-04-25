import 'package:flutter/material.dart';

class DestinationWidget extends StatelessWidget {
  const DestinationWidget({Key? key}) : super(key: key);

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
              Radius.circular(7),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 4, 0, 0),
                child: Text(
                  'مقصد',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(3, 2, 2, 2),
                child: Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(7),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(2),
                        ),
                      ),
                      width: 5,
                      height: 5,
                    ),
                  ),
                ),
              )
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
