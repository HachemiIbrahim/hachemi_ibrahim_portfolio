import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hachemi_ibrahim_portfolio/configs/app_dimensions.dart';
import 'package:hachemi_ibrahim_portfolio/utils/contact_utils.dart';
import 'package:hachemi_ibrahim_portfolio/widget/custom_text_heading.dart';
import 'package:hachemi_ibrahim_portfolio/widget/project_card.dart';

class ContactMobileTab extends StatelessWidget {
  const ContactMobileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomSectionHeading(
          text: "\nGet in Touch",
        ),
        const CustomSectionSubHeading(
          text: "Let's build something together :)\n\n",
        ),
        CarouselSlider.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ProjectCard(
              projectIconData: ContactUtils.contactIcon[i],
              projectTitle: ContactUtils.titles[i],
              projectDescription: ContactUtils.details[i],
            ),
          ),
          options: CarouselOptions(
            height: AppDimensions.normalize(90),
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        ),
      ],
    );
  }
}
