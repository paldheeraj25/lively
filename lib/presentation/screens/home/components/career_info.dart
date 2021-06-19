import 'package:flutter/material.dart';
import 'package:lively/constants/constants.dart';
import 'package:lively/presentation/widgets/info_cards.dart';

class CareerInfo extends StatelessWidget {
  const CareerInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: info_genre.length,
            itemBuilder: (context, index) => InfoCard(
                  genre: info_genre[index],
                )),
      ),
    );
  }
}
