import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lively/constants/constants.dart';
import 'package:lively/resources/model/user.dart';

class ContactandInfo extends StatelessWidget {
  const ContactandInfo({
    Key key,
    @required this.size,
    @required this.user,
  }) : super(key: key);

  final Size size;
  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.4,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.4 - 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
              image: DecorationImage(
                  image: NetworkImage(
                      user.profilePhoto.replaceAll('s96-c', 's400-c')),
                  fit: BoxFit.cover),
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: size.width * 0.9,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        topLeft: Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 5),
                          blurRadius: 50,
                          color: Color(0xFF12153D).withOpacity(0.2))
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/star_fill.svg",
                        ),
                        SizedBox(
                          height: kDefaultPadding / 4,
                        ),
                        RichText(
                          text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                    text: "8.2/",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600)),
                                TextSpan(text: "10\n"),
                                TextSpan(
                                    text: "122,23",
                                    style: TextStyle(color: kTextLightColor))
                              ]),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.video_call,
                              size: 38.0,
                              color: Colors.black87,
                            )),
                        Text(
                          "Call",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        )
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
