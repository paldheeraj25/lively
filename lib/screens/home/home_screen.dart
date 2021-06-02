import 'package:flutter/material.dart';
import 'package:lively/widgets/home_image.dart';
import 'package:lively/widgets/sign_in_button.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Function signInPress = () {
    print('hello');
  };
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[HomeImage(), SignInButton(signInPress: signInPress)],
      ),
    );
  }
}
