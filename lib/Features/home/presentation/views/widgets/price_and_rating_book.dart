import 'package:bookly_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class YearPulplishedAndPages extends StatelessWidget {
  const YearPulplishedAndPages(
      {super.key, required this.yearPublished, required this.bookPages});
  final String yearPublished;
  final int bookPages;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          yearPublished,
          style: Styles.titleStyle16,
        ),
        const SizedBox(
          width: 10,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            '($bookPages)',
            style: Styles.titleStyle14,
          ),
        ),
      ],
    );
  }
}
