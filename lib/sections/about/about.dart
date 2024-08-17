import 'package:flutter/material.dart';
import 'package:hachemi_ibrahim_portfolio/responsive/responsive.dart';
import 'package:hachemi_ibrahim_portfolio/sections/about/about_desktop.dart';
import 'package:hachemi_ibrahim_portfolio/sections/about/about_mobile.dart';
import 'package:hachemi_ibrahim_portfolio/sections/about/about_tablet.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      tablet: AboutTab(),
      mobile: AboutMobile(),
      desktop: AboutDesktop(),
    );
  }
}
