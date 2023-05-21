import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/responsive/responsive.dart';
import 'package:portfolio_website/screens/about/widgets/about_widget.dart';

import '../../utils/theme.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (PortResponsive.isDesktop(context)) {
      return Container(
        // height: 700,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppTheme.backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const AboutWidget(),
            RotatedBox(
              quarterTurns: 1,
              child: Text(
                'ABOUT\nME',
                style: GoogleFonts.aldrich(
                    fontWeight: FontWeight.bold,
                    fontSize: 140,
                    color: const Color.fromARGB(255, 68, 67, 67)),
              ),
            )
            // PicWidget(),
          ],
        ),
      );
    } else if (PortResponsive.isTablet(context)) {
      return Container(
        margin: const EdgeInsets.all(20),

        // height: 700,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppTheme.backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'ABOUT ME',
              style: GoogleFonts.aldrich(
                  fontWeight: FontWeight.bold,
                  fontSize: 100,
                  color: const Color.fromARGB(255, 68, 67, 67)),
            ),
            const SizedBox(
              height: 40,
            ),
            const AboutWidget(),
            // PicWidget(),
          ],
        ),
      );
    } else {
      return Container(
        // height: 700,
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppTheme.backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ABOUT',
                  style: GoogleFonts.aldrich(
                      fontWeight: FontWeight.bold,
                      fontSize: 90,
                      color: const Color.fromARGB(255, 68, 67, 67)),
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'ME',
                      style: GoogleFonts.aldrich(
                          fontWeight: FontWeight.bold,
                          fontSize: 80,
                          color: const Color.fromARGB(255, 68, 67, 67)),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Text(
                      'Who am I?',
                      style: GoogleFonts.aldrich(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            // Text(
            //   'ABOUT ME',
            //   style: GoogleFonts.aldrich(
            //       fontWeight: FontWeight.bold,
            //       fontSize: 50,
            //       color: const Color.fromARGB(255, 68, 67, 67)),
            // ),
            const SizedBox(
              height: 40,
            ),
            const AboutWidget(),
            // PicWidget(),
          ],
        ),
      );
    }
  }
}
