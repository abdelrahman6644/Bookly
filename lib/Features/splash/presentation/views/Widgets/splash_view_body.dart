import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bookly_app/core/utls/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Image(
          image: AssetImage(
            Assets.logo,
          ),
        ),
        Center(
          child: SizedBox(
            height: 30,
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 20,
                color: Colors.blueAccent,
                shadows: [
                  Shadow(
                    blurRadius: 7.0,
                    color: Colors.blueGrey,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  FlickerAnimatedText('Read Free Books'),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
