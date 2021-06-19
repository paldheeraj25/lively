import 'package:flutter/material.dart';
import 'package:lively/constants/constants.dart';

class RegisterWithUs extends StatelessWidget {
  const RegisterWithUs({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Don’t have an Account ?",
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            " Sign Up",
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
