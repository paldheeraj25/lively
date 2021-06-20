import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lively/logic/cubit/auth_cubit.dart';
import 'package:lively/presentation/screens/auth/components/background.dart';
import 'package:lively/presentation/screens/auth/components/register_with_us.dart';
import 'package:lively/presentation/screens/auth/components/social_login_button.dart';
import 'package:lively/presentation/widgets/or_divider.dart';
import 'package:lively/presentation/widgets/rounded_button.dart';
import 'package:lively/presentation/widgets/rounded_input_field.dart';
import 'package:lively/presentation/widgets/rounded_password_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocConsumer<AuthCubit, AuthState>(
              builder: (BuildContext context, state) {
                if (state is AuthInitial) {
                  return Text(
                    "yes",
                    style: Theme.of(context).textTheme.headline4,
                  );
                } else if (state is AuthSuccess) {
                  return Text(
                    "Auth success",
                    style: Theme.of(context).textTheme.headline4,
                  );
                } else if (state is AuthCheck) {
                  return Text(
                    "${state.isAuth}",
                    style: Theme.of(context).textTheme.headline4,
                  );
                } else {
                  return Text("test");
                }
                //return Text('test');
              },
              listener: (BuildContext context, state) {
                print(state.toString());
                if (state is AuthInitial) {
                  print('initial state is present');
                  //return BlocProvider.of<AuthCubit>(context).isAuth();
                } else {
                  print('other state is present');
                }
              },
            ),
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
            SocialLoginButton(size: size),
          ],
        ),
      ),
    );
  }
}
