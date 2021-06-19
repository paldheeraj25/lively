import 'package:flutter/material.dart';
import 'package:lively/constants/constants.dart';
import 'package:lively/presentation/screens/home/components/career_info.dart';
import 'package:lively/presentation/screens/home/components/contact_info.dart';
import 'package:lively/presentation/screens/home/components/personal_description.dart';
import 'package:lively/presentation/screens/home/components/schedule.dart';
import 'package:lively/resources/model/user.dart';

class Body extends StatelessWidget {
  final User user;
  const Body({
    Key key,
    @required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContactandInfo(size: size, user: user),
        SizedBox(
          height: kDefaultPadding / 2,
        ),
        PersonalDescription(user: user),
        CareerInfo(),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2, horizontal: kDefaultPadding),
          child: Text(
            'Expertise',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidata",
              style: TextStyle(color: Color(0xFF737599))),
        ),
        SizedBox(height: kDefaultPadding),
        Schedule(size: size),
        SizedBox(
          height: kDefaultPadding / 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notification_add,
                  color: kPrimaryColor,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message,
                  color: kPrimaryColor,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: kPrimaryColor,
                )),
          ],
        )
      ],
    );
  }
}
