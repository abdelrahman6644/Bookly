import 'package:bookly_app/Features/splash/home/data/presentation/views/home_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/Widgets/animated_text.dart';
import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utls/assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const HomeView(),
          transition: Transition.fade, duration: kTranstionDuration);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image(
          image: AssetImage(
            Assets.logo,
          ),
        ),
        animatedText(
          text: 'Read Free Books',
        ),
      ],
    );
  }
}
