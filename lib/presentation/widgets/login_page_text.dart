import 'package:flutter/material.dart';

class LoginPageText extends StatelessWidget {
  const LoginPageText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        SizedBox(
          height: 50,
        ),
        RichText(
          text: TextSpan(
              text: "Keep",
              style: TextStyle(
                  color: Colors.green[300],
                  fontSize: 50,
                  fontWeight: FontWeight.w900),
              children: <TextSpan>[
                TextSpan(
                    text: 'Calm',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w400,
                    )),
              ]),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
              'Lorem ipsum dolor sit amet, elit, sed do eiusmod tempor incididunt.dolor sit amet, elit',
              style: TextStyle(
                  color: Colors.white30,
                  fontWeight: FontWeight.w100,
                  fontSize: 14,
                  decoration: TextDecoration.none),
              textAlign: TextAlign.justify),
        )
      ],
    ));
  }
}
