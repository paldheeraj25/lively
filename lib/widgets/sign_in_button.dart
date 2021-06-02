import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:lively/widgets/login_page_text.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    Key key,
    @required this.signInPress,
  }) : super(key: key);

  final Function signInPress;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned(
      top: size.height * 0.1,
      left: size.width * 0.1,
      right: size.width * 0.1,
      child: Container(
        color: Colors.black.withOpacity(0.3),
        height: size.height * 0.5,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            LoginPageText(),
            Spacer(),
            Container(
              width: size.width * 0.6,
              child: GoogleSignInButton(
                onPressed: signInPress,
                darkMode: false, // default: false
              ),
            ),
            SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}
