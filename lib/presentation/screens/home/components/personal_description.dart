import 'package:flutter/material.dart';
import 'package:lively/constants/constants.dart';
import 'package:lively/resources/model/user.dart';

class PersonalDescription extends StatelessWidget {
  const PersonalDescription({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.displayName,
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                height: kDefaultPadding / 2,
              ),
              Row(
                children: [
                  Text("Lawyer", style: TextStyle(color: kTextLightColor))
                ],
              )
            ],
          )),
          SizedBox(
            height: 64,
            width: 64,
          ),
        ],
      ),
    );
  }
}
