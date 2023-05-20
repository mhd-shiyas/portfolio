import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
// hide BoxDecoration, BoxShadow;
// import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/responsive/responsive.dart';
import 'package:portfolio_website/widgets/dribble.dart';
import 'package:portfolio_website/widgets/github_card.dart';
import 'package:portfolio_website/widgets/instagram_card.dart';
import 'package:portfolio_website/widgets/linkdin_card.dart';
import 'package:portfolio_website/widgets/twitter_card.dart';
import 'package:portfolio_website/widgets/entrance_fader.dart';

import '../../../utils/theme.dart';

class NameWidget extends StatefulWidget {
  const NameWidget({Key? key}) : super(key: key);

  @override
  State<NameWidget> createState() => _NameWidgetState();
}

class _NameWidgetState extends State<NameWidget> {
  bool isHover = false;
  bool isInsta = false;

  @override
  Widget build(BuildContext context) {
    Offset distance = isHover ? Offset(10, 10) : Offset(28, 28);
    double blur = isHover ? 5.0 : 50.0;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedTextKit(repeatForever: true, animatedTexts: [
          TypewriterAnimatedText('HI, WELCOME TO MY PORTFOLIO',
              speed: const Duration(milliseconds: 100),
              textStyle: GoogleFonts.pressStart2p(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: AppTheme.textColor1,
              )),
        ]),
        const SizedBox(
          height: 10,
        ),
        if (PortResponsive.isDesktop(context))
          Text(
            'MUHAMMED',
            style: GoogleFonts.michroma(
              fontWeight: FontWeight.bold,
              fontSize: 50,
              color: AppTheme.textColor2,
            ),
          ),
        if (PortResponsive.isTablet(context))
          Text(
            'MUHAMMED',
            style: GoogleFonts.michroma(
              fontWeight: FontWeight.bold,
              fontSize: 50,
              color: AppTheme.textColor2,
            ),
          ),
        if (PortResponsive.isMobile(context))
          Text(
            'MUHAMMED',
            style: GoogleFonts.michroma(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: AppTheme.textColor2,
            ),
          ),
        if (PortResponsive.isDesktop(context))
          Text(
            'SHIYAS',
            style: GoogleFonts.michroma(
              fontWeight: FontWeight.bold,
              fontSize: 50,
              color: AppTheme.textColor2,
            ),
          ),
        if (PortResponsive.isTablet(context))
          Text(
            'SHIYAS',
            style: GoogleFonts.michroma(
              fontWeight: FontWeight.bold,
              fontSize: 50,
              color: AppTheme.textColor2,
            ),
          ),
        if (PortResponsive.isMobile(context))
          Text(
            'SHIYAS',
            style: GoogleFonts.michroma(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: AppTheme.textColor2,
            ),
          ),
        // Text(
        //   'SHIYAS',
        //   style: GoogleFonts.michroma(
        //     fontWeight: FontWeight.bold,
        //     fontSize: 50,
        //     color: AppTheme.textColor2,
        //   ),
        // ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const Icon(
              Icons.arrow_right,
              color: AppTheme.textColor2,
            ),
            AnimatedTextKit(repeatForever: true, animatedTexts: [
              FadeAnimatedText(
                'Flutter Developer',
                textStyle: GoogleFonts.michroma(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: AppTheme.textColor2,
                ),
              ),
              FadeAnimatedText(
                'UI/UX Designner',
                textStyle: GoogleFonts.michroma(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: AppTheme.textColor2,
                ),
              ),
            ]),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        EntranceFader(
          offset: const Offset(0, -10),
          delay: const Duration(milliseconds: 100),
          duration: const Duration(milliseconds: 700),
          child: InkWell(
            onTap: () {},
            onHover: (hov) {
              if (hov) {
                setState(() => isHover = true);
              } else {
                setState(() => isHover = false);
              }
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              height: 40,
              width: 170,
              decoration: BoxDecoration(
                // gradient: LinearGradient(colors: [
                //   AppTheme.appbarHoverColor,
                //   Co
                // ]),
                borderRadius: BorderRadius.circular(20),
                color: AppTheme.buttonColor,
                // boxShadow: const [
                //   BoxShadow(
                //     blurRadius: 50.0,
                //     offset: Offset(-28, -28),
                //     color: AppTheme.buttonColor,
                //     // inset: isHover,
                //   ),
                //   // BoxShadow(
                //   //   blurRadius: blur,
                //   //   offset: distance,
                //   //   color: const Color(0Xff23262A),
                //   //   inset: isHover,
                //   // ),
                // ]
              ),
              child: isHover
                  ? const Icon(
                      Icons.download,
                      size: 17,
                      color: Colors.black,
                    )
                  : Center(
                      child: Text(
                        'DOWNLOAD CV',
                        style: GoogleFonts.mukta(
                          fontWeight: FontWeight.bold,
                          // letterSpacing: 1,
                          fontSize: 15,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: const [
            GitHubCard(),
            SizedBox(
              width: 20,
            ),
            TwitterCard(),
            SizedBox(
              width: 20,
            ),
            LinkedinCard(),
            SizedBox(
              width: 20,
            ),
            InstagramCard(),
            SizedBox(
              width: 20,
            ),
            dribbleCard(),
          ],
        )
        // EntranceFader(
        //   offset: const Offset(0, -10),
        //   delay: const Duration(milliseconds: 1000),
        //   duration: const Duration(milliseconds: 700),
        //   child: ElevatedButton(
        //       onHover: (hov) {
        //         if (hov) {
        //           setState(() => isHover = true);
        //         } else {
        //           setState(() => isHover = false);
        //         }
        //       },
        //       style: ElevatedButton.styleFrom(
        //           elevation: isHover ? 20 : 10,
        //           // maximumSize: const Size(300, 120),
        //           minimumSize: const Size(200, 40),
        //           backgroundColor: AppTheme.appbarHoverColor,
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(10),

        //             // side: const BorderSide(
        //             //   color: Color(0xff133A12),
        //             //   width: 1,
        //             // )
        //           )),
        //       onPressed: () {},
        //       child: isHover
        //           ? const Icon(
        //               Icons.download,
        //               size: 20,
        //               color: Colors.white,
        //             )
        //           : Text(
        //               'DOWNLOAD CV',
        //               style: TextStyle(
        //                 fontWeight: FontWeight.bold,
        //                 // letterSpacing: 1,
        //                 fontSize: 15,
        //                 // fontWeight: FontWeight.bold,
        //                 color: isHover ? Colors.white : Colors.black,
        //               ),
        //             )),
        // )
      ],
    );
  }
}
