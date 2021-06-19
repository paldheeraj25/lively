import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lively/logic/cubit/auth_cubit.dart';
import 'package:lively/presentation/screens/auth/sign_in.dart';
import 'package:lively/presentation/screens/home/home.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is AuthSuccess) {
          return HomeScreen(
            user: state.user,
          );
        } else {
          return SignIn();
        }
      },
    );
  }
}
