import 'package:flutter/material.dart';
import 'package:hachemi_ibrahim_portfolio/animations/entrance_fader.dart';
import 'package:hachemi_ibrahim_portfolio/configs/configs.dart';
import 'package:hachemi_ibrahim_portfolio/provider/scroll_provider.dart';
import 'package:provider/provider.dart';

class NavBarActionButton extends StatelessWidget {
  final String label;
  final int index;
  const NavBarActionButton({
    super.key,
    required this.label,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return EntranceFader(
      offset: const Offset(0, -10),
      delay: const Duration(milliseconds: 100),
      duration: const Duration(milliseconds: 250),
      child: Container(
        margin: Space.h!,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: MaterialButton(
          splashColor: Colors.white54,
          highlightColor: Colors.white54,
          hoverColor: AppTheme.c!.primary,
          onPressed: () {
            scrollProvider.scroll(index);
          },
          child: Padding(
            padding: Space.all(0.5, 0.45),
            child: Text(
              label,
              style: AppText.l1,
            ),
          ),
        ),
      ),
    );
  }
}
