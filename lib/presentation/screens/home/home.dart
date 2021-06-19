import 'package:flutter/material.dart';
import 'package:lively/presentation/screens/home/components/body.dart';
import 'package:lively/resources/model/user.dart';

class HomeScreen extends StatelessWidget {
  final User user;

  HomeScreen({@required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(
        user: user,
      ),
    );
  }
}
