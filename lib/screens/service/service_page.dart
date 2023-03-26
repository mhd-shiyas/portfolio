import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/responsive/responsive.dart';
import 'package:portfolio_website/screens/service/widgets/mobile_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils/services_utils.dart';
import '../../utils/theme.dart';

import 'widgets/services_card.dart';

class ServicePage extends StatelessWidget {
  ServicePage({Key? key}) : super(key: key);

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    if (PortResponsive.isDesktop(context)) {
      return Container(
        height: 400,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppTheme.backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'SERVICES',
              style: GoogleFonts.aldrich(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 68, 67, 67),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...ServiceUtils.names
                    .asMap()
                    .entries
                    .map((e) => ServiceCard(label: e.value, index: e.key)),
              ],
            )
          ],
        ),
      );
    } else if (PortResponsive.isTablet(context)) {
      return Container(
        height: 400,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppTheme.backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'SERVICES',
              style: GoogleFonts.aldrich(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 68, 67, 67),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...ServiceUtils.names
                    .asMap()
                    .entries
                    .map((e) => ServiceCard(label: e.value, index: e.key)),
              ],
            )
          ],
        ),
      );
    } else {
      return Container(
          height: 400,
          margin: const EdgeInsets.all(20),
          // width: double.infinity,
          // width: 50,
          decoration: BoxDecoration(
            color: AppTheme.backgroundColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SERVICES',
                style: GoogleFonts.aldrich(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 68, 67, 67),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Text(
                    'Scroll to view more',
                    style: GoogleFonts.aldrich(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Icon(
                    Icons.arrow_right_alt_sharp,
                    color: Colors.white,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                child: PageView(
                  controller: _pageController,
                  children: const [
                    MobileCard(
                      label: 'ANDROID\nApp Development',
                    ),
                    MobileCard(
                      label: 'IOS\nApp Development',
                    ),
                    MobileCard(
                      label: 'WEB-BASED\nDevelopment',
                    ),
                    MobileCard(
                      label: 'UI/UX\nDevelopment',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: 4,
                  effect: CustomizableEffect(
                      spacing: 15,
                      dotDecoration: DotDecoration(
                        width: 24,
                        height: 12,
                        color: const Color.fromARGB(255, 71, 70, 70),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      activeDotDecoration: DotDecoration(
                        width: 32,
                        height: 12,
                        color: Colors.white,
                        rotationAngle: 180,
                        verticalOffset: -10,
                        borderRadius: BorderRadius.circular(24),
                      )),
                ),
              ),
            ],
          ));
    }
  }
}
