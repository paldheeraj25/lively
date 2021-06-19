import 'package:flutter/material.dart';
import 'package:lively/constants/constants.dart';

class Schedule extends StatelessWidget {
  const Schedule({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
          width: size.width * 0.8,
          height: size.width * 0.15,
          child: OutlinedButton(
            child: Text('Schedule',
                style: TextStyle(color: kPrimaryColor, fontSize: 16)),
            style: OutlinedButton.styleFrom(
              side: BorderSide(width: 2.0, color: kPrimaryColor),
            ),
            onPressed: () {},
          )),
    );
  }
}
