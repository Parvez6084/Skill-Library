

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skill_library/views/pages/welcome_page/welcomePageController.dart';

import '../../../consts/app_fonts.dart';
import '../../../consts/app_images.dart';

class WelcomePage extends GetView<WelcomePageController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 40,
              left: 40,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        'Welcome to',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontFamily: AppFonts.yesteryear,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        ' Skill-Library',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.pink,
                            fontFamily: AppFonts.yesteryear,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Find your course easily !!',
                        textStyle: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                        speed: const Duration(milliseconds: 200),
                      ),
                    ],
                    totalRepeatCount: 1,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
                child: Image.asset(
                  AppImages.welcomeImage,
                  fit: BoxFit.cover,width: 300,)),
            const Positioned(
              bottom: 40,
              left: 40,
              child:Text(
                'Let find your course >>',
                style: TextStyle(color: Colors.pink),
              ),
            )
          ],
        ),
      ),
    );
  }
}
