import 'package:flutter/material.dart';
import 'package:hachemi_ibrahim_portfolio/sections/about/about.dart';
import 'package:hachemi_ibrahim_portfolio/sections/contact/contact.dart';
import 'package:hachemi_ibrahim_portfolio/sections/home/home.dart';
import 'package:hachemi_ibrahim_portfolio/sections/portfolio/portfolio.dart';
import 'package:hachemi_ibrahim_portfolio/sections/services/services.dart';
import 'package:hachemi_ibrahim_portfolio/widget/footer.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  static const String mobilePhoto = 'assets/photos/mobile.png';
  static const String coloredPhoto = 'assets/photos/colored.png';
  static const String blackWhitePhoto = 'assets/photos/profile.png';

  // work
  static const String dsc = 'assets/work/dsc.png';
  static const String sastaticket = 'assets/work/st.png';
  static const String university = 'assets/work/cui.png';
  static const String fullterIsb = 'assets/work/flutterIsl.png';

  // services
  static const String appDev = 'assets/services/app.png';
  static const String maintMaintenance = 'assets/services/rapid.png';
  static const String openSource = 'assets/services/open.png';
  static const String backend = 'assets/services/backend.png';

  static const List<String> socialIconURL = [
    "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
    "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",
  ];

  static const List<String> socialLinks = [
    "https://web.facebook.com/profile.php?id=100055586611955&locale=fr_FR",
    "https://www.instagram.com/ibrahim__hachemi/",
    "https://www.linkedin.com/in/ibrahim-hachemi-a32654265/",
    "https://github.com/HachemiIbrahim",
  ];

  static const String resume =
      'https://drive.google.com/file/d/1bDNNrkQtNVJbXcdwMSx0crQQvAF_nMwV/view?usp=sharing';

  static const String gitHub = 'https://github.com/HachemiIbrahim';
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
