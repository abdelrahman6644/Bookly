import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class animatedText extends StatelessWidget {
  const animatedText({
    super.key,
    required this.text,
  });
  final String  text;
  @override
  Widget build(BuildContext context) {
    return Center(
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
              FlickerAnimatedText(text),
            ],
          ),
        ),
      ),
    );
  }
}


  // late AnimationController animationController;
  // late Animation<Offset> slidingAnimation;
  // @override
  // void initState() {
  //   super.initState();
  //   animationController = AnimationController(
  //     vsync: this,
  //     duration: const Duration(minutes: 10),
  //   );
  //   slidingAnimation =
  //       Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
  //           .animate(animationController);
    
  // }


        // AnimatedBuilder(
        //   animation: slidingAnimation,
        //   builder: (context, child) => SlideTransition(
        //     position: slidingAnimation,
        //     child: const Text(
        //       'Read Free Books',
        //       textAlign: TextAlign.center,
        //     ),
        //   ),
        // ),