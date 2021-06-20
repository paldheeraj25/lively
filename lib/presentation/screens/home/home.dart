import 'package:flutter/material.dart';
import 'package:lively/presentation/screens/home/components/body.dart';
import 'package:lively/resources/model/user.dart';
import 'package:lively/resources/repository/firebase_repository.dart';

class HomeScreen extends StatelessWidget {
  final User user;

  HomeScreen({@required this.user});
  //FirebaseRepository _repository = FirebaseRepository();
  @override
  Widget build(BuildContext context) {
    //_repository.signOut();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(
        user: user,
      ),
    );
  }
}
