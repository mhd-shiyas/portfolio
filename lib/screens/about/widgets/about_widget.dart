import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/screens/about/widgets/personal_widget.dart';
import 'package:portfolio_website/screens/about/widgets/technology_widget.dart';

import '../../../responsive/responsive.dart';
import '../../../utils/theme.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (PortResponsive.isDesktop(context)) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Who am I?',
            style: GoogleFonts.aldrich(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'I’m Muhammed Shiyas, a Flutter Developer.\nand also UI Designer.',
            style: GoogleFonts.aldrich(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppTheme.textColor1),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            child: Text(
              'I’m a Second Year Computer Science student enrolled in Calicut University.\nI have been developing mobile apps for over 1 year now.',
              style: GoogleFonts.aldrich(
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: AppTheme.textColor1,
            width: 300,
            height: 2,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Technologies i have worked with',
            style: GoogleFonts.aldrich(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: AppTheme.textColor1),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              TechnologyWidget(
                text: 'Flutter',
                size: 15,
              ),
              TechnologyWidget(
                text: 'Dart',
                size: 15,
              ),
              TechnologyWidget(
                text: 'Figma',
                size: 15,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            color: AppTheme.textColor1,
            width: 300,
            height: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          DetailsWidget(),
        ],
      );
    } else if (PortResponsive.isTablet(context)) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Who am I?',
            style: GoogleFonts.aldrich(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'I’m Muhammed Shiyas, a Flutter Developer.\nand also UI Designer.',
            style: GoogleFonts.aldrich(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppTheme.textColor1),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            child: Text(
              'I’m a Second Year Computer Science student enrolled in Calicut University.\nI have been developing mobile apps for over 1 year now.',
              style: GoogleFonts.aldrich(
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: AppTheme.textColor1,
            width: 300,
            height: 2,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Technologies i have worked with',
            style: GoogleFonts.aldrich(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: AppTheme.textColor1),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              TechnologyWidget(
                text: 'Flutter',
                size: 15,
              ),
              TechnologyWidget(
                text: 'Dart',
                size: 15,
              ),
              TechnologyWidget(
                text: 'Figma',
                size: 15,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            color: AppTheme.textColor1,
            width: 300,
            height: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          DetailsWidget(),
        ],
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          const SizedBox(
            height: 30,
          ),
          Text(
            'I’m Muhammed Shiyas, a Flutter Developer.\nand also UI Designer.',
            style: GoogleFonts.aldrich(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: AppTheme.textColor1),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            child: Text(
              'I’m a Second Year Computer Science student enrolled in Calicut University.\nI have been developing mobile apps for over 1 year now.',
              style: GoogleFonts.aldrich(
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 2,
            color: Colors.white,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Technologies i have worked with',
            style: GoogleFonts.aldrich(
                fontWeight: FontWeight.bold,
                fontSize: 13,
                color: AppTheme.textColor1),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: const [
              TechnologyWidget(text: 'Flutter'),
              TechnologyWidget(text: 'Dart'),
              TechnologyWidget(text: 'Figma'),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: 2,
            color: Colors.white,
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            height: 150,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                PersonalWidget(
                  keyName: 'Name',
                  value: 'Muhammed Shiyas',
                  keySize: 15,
                  valueSize: 15,
                ),
                PersonalWidget(
                  keyName: 'Age',
                  value: '19',
                  keySize: 15,
                  valueSize: 15,
                ),
                PersonalWidget(
                  keyName: 'From',
                  value: 'Kerala, India',
                  keySize: 15,
                  valueSize: 15,
                ),
                PersonalWidget(
                  keyName: 'Email',
                  value: 'chmuhdshiyas@gmail.com',
                  keySize: 15,
                  valueSize: 15,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
        ],
      );
    }
  }
}

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 480,
      height: 50,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppTheme.textColor1,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PersonalWidget(
                keyName: 'Name',
                value: 'Muhammed Shiyas',
              ),
              const SizedBox(
                width: 20,
              ),
              Row(
                children: [
                  Text(
                    'From: ',
                    style: GoogleFonts.michroma(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Kerala,India: ',
                    style: GoogleFonts.michroma(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Age: ',
                    style: GoogleFonts.michroma(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '19 ',
                    style: GoogleFonts.michroma(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Row(
                children: [
                  Text(
                    'Email: ',
                    style: GoogleFonts.michroma(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'chmuhdshiyas@gmail.com ',
                    style: GoogleFonts.michroma(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
