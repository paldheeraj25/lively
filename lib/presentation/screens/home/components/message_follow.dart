import 'package:flutter/material.dart';
import 'package:lively/constants/constants.dart';

class MessageFollow extends StatelessWidget {
  const MessageFollow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notification_add,
              color: kPrimaryColor,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message,
              color: kPrimaryColor,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: kPrimaryColor,
            )),
      ],
    );
  }
}
