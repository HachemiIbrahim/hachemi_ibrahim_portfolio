import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:hachemi_ibrahim_portfolio/animations/entrance_fader.dart';
import 'package:hachemi_ibrahim_portfolio/configs/configs.dart';

import 'package:hachemi_ibrahim_portfolio/utils/utils.dart';
import 'package:hachemi_ibrahim_portfolio/widget/social_links.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 1.02,
      child: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(
                AppDimensions.normalize(30),
                AppDimensions.normalize(80),
                0,
                0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "HEY THERE! ",
                        style: AppText.b2!.copyWith(
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      Space.x!,
                      Image.asset(
                        StaticUtils.hi,
                        height: AppDimensions.normalize(10),
                      ),
                    ],
                  ),
                  Space.y!,
                  Text(
                    "Hachemi",
                    style: AppText.h3!.copyWith(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  Text(
                    "Ibrahim",
                    style: AppText.h3b!.copyWith(
                      height: 1,
                    ),
                  ),
                  Space.y!,
                  Row(
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
                            ' Ai/Ml Enthusiast',
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                        ],
                        repeatForever: true,
                        isRepeatingAnimation: true,
                      ),
                    ],
                  ),
                  Space.y!,
                  const SocialLinks(),
                ],
              ),
            ),
          ),
          // SizedBox(
          //   height: size.height * 0.4,
          // ),
          Align(
            child: Positioned(
              right: 0,
              child: Opacity(
                opacity: 0.9,
                child: EntranceFader(
                  offset: const Offset(0, 0),
                  delay: const Duration(seconds: 1),
                  duration: const Duration(milliseconds: 800),
                  child: Image.asset(
                    StaticUtils.blackWhitePhoto,
                    height: size.width < 1000
                        ? size.height * 0.3
                        : size.height * 0.4,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
