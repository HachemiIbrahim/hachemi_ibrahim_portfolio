import 'package:flutter/material.dart';
import 'package:hachemi_ibrahim_portfolio/responsive/responsive.dart';
import 'package:hachemi_ibrahim_portfolio/sections/home/home_desktop.dart';
import 'package:hachemi_ibrahim_portfolio/sections/home/home_mobile.dart';
import 'package:hachemi_ibrahim_portfolio/sections/home/home_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: HomeMobile(),
      tablet: HomeTab(),
      desktop: HomeDesktop(),
    );
  }
}
