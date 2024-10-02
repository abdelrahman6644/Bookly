import 'package:bookly_app/core/utls/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingBook extends StatelessWidget {
  const RatingBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          size: 20,
          color: Colors.yellow,
        ),
        SizedBox(
          width: 7,
        ),
        Text(
          '4.5',
          style: Styles.titleStyle16,
        ),
        SizedBox(
          width: 10,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            '(2324)',
            style: Styles.titleStyle14,
          ),
        ),
      ],
    );
  }
}
