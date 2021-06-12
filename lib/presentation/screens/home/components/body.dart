import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lively/constants/constants.dart';
import 'package:lively/presentation/screens/home/components/background.dart';
import 'package:lively/presentation/screens/home/components/register_with_us.dart';
import 'package:lively/presentation/widgets/or_divider.dart';
import 'package:lively/presentation/widgets/rounded_button.dart';
import 'package:lively/presentation/widgets/rounded_input_field.dart';
import 'package:lively/presentation/widgets/rounded_password_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset("assets/icons/signup.svg",
              height: size.height * 0.35),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(text: "Sign In", press: () {}),
          SizedBox(
            height: size.height * 0.03,
          ),
          RegisterWithUs(),
          orDevider(),
          Container(
            width: size.width * 0.6,
            child: GoogleSignInButton(
              onPressed: () {},
              darkMode: false, // default: false
            ),
          ),
        ],
      ),
    );
  }
}
