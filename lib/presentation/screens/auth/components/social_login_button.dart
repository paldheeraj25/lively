import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lively/logic/cubit/auth_cubit.dart';
import 'package:lively/resources/repository/firebase_repository.dart';

class SocialLoginButton extends StatelessWidget {
  FirebaseRepository _repository = FirebaseRepository();

  SocialLoginButton({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.6,
      child: GoogleSignInButton(
        onPressed: () {
          BlocProvider.of<AuthCubit>(context).signIn();
        },
        darkMode: false, // default: false
      ),
    );
  }
}
