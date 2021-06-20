import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lively/constants/constants.dart';

class SpinnerScreen extends StatelessWidget {
  const SpinnerScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SpinKitSpinningCircle(
              color: kPrimaryColor,
              size: 50.0,
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Text(
              "Loading",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 16.00,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
