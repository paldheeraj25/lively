import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lively/constants/constants.dart';
import 'package:lively/logic/cubit/auth_cubit.dart';
import 'package:lively/presentation/screens/welcome/welcome_screen.dart';
import 'package:lively/resources/repository/firebase_repository.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  FirebaseRepository firebaseRepository = FirebaseRepository();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(firebaseRepository: firebaseRepository),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: APPNAME,
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        home: WelcomeScreen(),
      ),
    );
  }
}
