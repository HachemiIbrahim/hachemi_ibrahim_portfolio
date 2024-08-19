import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:hachemi_ibrahim_portfolio/animations/entrance_fader.dart';
import 'package:hachemi_ibrahim_portfolio/configs/configs.dart';

import 'package:hachemi_ibrahim_portfolio/utils/utils.dart';
import 'package:hachemi_ibrahim_portfolio/widget/social_links.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      padding: Space.h,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(
              size.width * 0.35,
              size.height * 0.3,
              0,
              0,
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'WELCOME TO MY PORTOFOLIO! ',
                        style: AppText.b1!.copyWith(
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      EntranceFader(
                        offset: const Offset(0, 0),
                        delay: const Duration(seconds: 2),
                        duration: const Duration(milliseconds: 800),
                        child: Image.asset(
                          StaticUtils.hi,
                          height: AppDimensions.normalize(12),
                        ),
                      ),
                    ],
                  ),
                  Space.y1!,
                  Text(
                    "Hachemi",
                    style: AppText.h1!.copyWith(
                      fontFamily: 'Montserrat',
                      fontSize: AppDimensions.normalize(25),
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  Text(
                    "Ibrahim",
                    style: AppText.h1b!.copyWith(
                      fontSize: AppDimensions.normalize(25),
                      height: 1,
                    ),
                  ),
                  EntranceFader(
                    offset: const Offset(-10, 0),
                    delay: const Duration(seconds: 1),
                    duration: const Duration(milliseconds: 800),
                    child: Row(
                      children: [
                        Icon(
                          Icons.play_arrow_rounded,
                          color: AppTheme.c!.primary!,
                        ),
                        AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              ' Flutter Developer',
                              speed: const Duration(milliseconds: 50),
                              textStyle: AppText.b1,
                            ),
                            TyperAnimatedText(
                              ' AI/ML Enthusiast',
                              speed: const Duration(milliseconds: 50),
                              textStyle: AppText.b1,
                            ),
                          ],
                          isRepeatingAnimation: true,
                        ),
                      ],
                    ),
                  ),
                  Space.y!,
                  const SocialLinks(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
