import 'package:bookly_app/core/utls/assets.dart';
import 'package:flutter/material.dart';

class ViewInRow extends StatelessWidget {
  const ViewInRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, top: 8),
      child: SizedBox(
        height: 240,
        child: SizedBox(
          height: 240,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ShowPoster(
                      Imageurl: Assets.test_image,
                      height: 240,
                      width: 160,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class ShowPoster extends StatelessWidget {
  ShowPoster({
    super.key,
    required this.Imageurl,
    required this.height,
    required this.width,
  });
  String? Imageurl;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(Imageurl!), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    );
  }
}
