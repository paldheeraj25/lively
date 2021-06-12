import 'package:flutter/material.dart';
import 'package:lively/constants/constants.dart';

class orDevider extends StatelessWidget {
  const orDevider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      width: size.width * 0.8,
      child: Row(children: [
        BuildDivider(),
        Text(
          "OR",
          style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w600),
        ),
        BuildDivider(),
      ]),
    );
  }
}

class BuildDivider extends StatelessWidget {
  const BuildDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Divider(color: Color(0xFFD9D9D9), height: 1.5));
  }
}
