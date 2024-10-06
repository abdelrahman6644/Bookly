import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class BookTitle extends StatelessWidget {
  const BookTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: Text(
        "Harry Potter and the Golbet of Fire",
        style: Styles.titleStyle20.copyWith(fontFamily: kGtSectraFine),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
