import 'package:flutter/material.dart';
import 'package:movies/core/configs/assets/app_images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppImages.splashBackgroundd,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [
                  const Color(0xff1A1B20).withOpacity(0),
                  const Color(0xff1A1B20),
                ])),
          )
        ],
      ),
    );
  }
}
