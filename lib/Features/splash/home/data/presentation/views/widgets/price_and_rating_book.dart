import 'package:bookly_app/core/utls/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PriceAndRatingBook extends StatelessWidget {
  const PriceAndRatingBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '19.99 \$',
          style: Styles.titleStyle20
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 35,
        ),
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 20,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 7,
        ),
        const Text(
          '4.5',
          style: Styles.titleStyle16,
        ),
        const SizedBox(
          width: 7,
        ),
        Text(
          '(2324)',
          style: Styles.titleStyle14
              .copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
