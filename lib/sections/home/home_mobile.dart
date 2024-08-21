import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:hachemi_ibrahim_portfolio/configs/configs.dart';

import 'package:hachemi_ibrahim_portfolio/utils/utils.dart';
import 'package:hachemi_ibrahim_portfolio/widget/social_links.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(
              0,
              size.height * 0.35,
              0,
              0,
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
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
                    mainAxisAlignment: MainAxisAlignment.center,
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
        ],
      ),
    );
  }
}
