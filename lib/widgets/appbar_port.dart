import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/widgets/appbar_action_button.dart';

import '../utils/theme.dart';

class PortAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopAppbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopAppbar();
        } else {
          return DesktopAppbar();
        }
      },
    );
  }
}

class DesktopAppbar extends StatefulWidget {
  @override
  State<DesktopAppbar> createState() => _DesktopAppbarState();
}

class _DesktopAppbarState extends State<DesktopAppbar> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: Container(
            height: 60,
            width: double.infinity,
            // margin: const EdgeInsets.symmetric(vertical: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppTheme.backgroundColor,
            ),
            child: AppBarActionButton()));
  }
}
