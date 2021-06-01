import 'package:flutter/material.dart';
import 'package:lively/widgets/home_image.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          HomeImage(),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.70,
            right: MediaQuery.of(context).size.width * 0.4,
            child: FlatButton(
              child: Text('Login'),
              color: Colors.green[200],
              textColor: Colors.white,
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
