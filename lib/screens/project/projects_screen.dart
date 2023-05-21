import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/screens/project/pages/design_page.dart';
import 'package:portfolio_website/utils/theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../responsive/responsive.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  bool isui = false;
  bool isApp = false;
  bool isWeb = false;
    final _projectpageController = PageController();


  @override
  Widget build(BuildContext context)
  
  {
    if (PortResponsive.isDesktop(context)) {
      return Container(
      height: 400,
      width: double.infinity,
      color: AppTheme.backgroundColor,
      child: Column(
        children: [
          Text(
            'PROJECTS',
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const DesignPage())),
                onHover: (hov) {
                  if (hov) {
                    setState(() => isui = true);
                  } else {
                    setState(() => isui = false);
                  }
                },
                child: Container(
                  margin: const EdgeInsets.all(15),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: isui ? Colors.white : AppTheme.backgroundColor,
                      boxShadow: [
                        BoxShadow(
                            color: const Color.fromARGB(255, 68, 67, 67),
                            offset:
                                isui ? const Offset(0, 0) : const Offset(2, 2),
                            spreadRadius: isui ? 0 : 2,
                            blurRadius: isui ? 0 : 3)
                      ]),
                  child: Center(
                    child: Text(
                      'UI/UX DESIGNS',
                      style: GoogleFonts.aldrich(
                        fontSize: 20,
                        color: isui ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                onHover: (hov) {
                  if (hov) {
                    setState(() => isApp = true);
                  } else {
                    setState(() => isApp = false);
                  }
                },
                child: Container(
                  margin: const EdgeInsets.all(15),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: isApp ? Colors.white : AppTheme.backgroundColor,
                      boxShadow: [
                        BoxShadow(
                            color: const Color.fromARGB(255, 68, 67, 67),
                            offset:
                                isApp ? const Offset(0, 0) : const Offset(2, 2),
                            spreadRadius: isApp ? 0 : 2,
                            blurRadius: isApp ? 0 : 3)
                      ]),
                  child: Center(
                    child: Text(
                      'APPS',
                      style: GoogleFonts.aldrich(
                        fontSize: 20,
                        color: isApp ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                onHover: (hov) {
                  if (hov) {
                    setState(() => isWeb = true);
                  } else {
                    setState(() => isWeb = false);
                  }
                },
                child: Container(
                  margin: const EdgeInsets.all(15),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: isWeb ? Colors.white : AppTheme.backgroundColor,
                      boxShadow: [
                        BoxShadow(
                            color: const Color.fromARGB(255, 68, 67, 67),
                            offset:
                                isWeb ? const Offset(0, 0) : const Offset(2, 2),
                            spreadRadius: isWeb ? 0 : 2,
                            blurRadius: isWeb ? 0 : 3)
                      ]),
                  child: Center(
                    child: Text(
                      'WEBSITES',
                      style: GoogleFonts.aldrich(
                        fontSize: 20,
                        color: isWeb ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
    } else if (PortResponsive.isTablet(context)) {
      return Container(
      height: 400,
      width: double.infinity,
      color: AppTheme.backgroundColor,
      child: Column(
        children: [
          Text(
            'PROJECTS',
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const DesignPage())),
                onHover: (hov) {
                  if (hov) {
                    setState(() => isui = true);
                  } else {
                    setState(() => isui = false);
                  }
                },
                child: Container(
                  margin: const EdgeInsets.all(15),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: isui ? Colors.white : AppTheme.backgroundColor,
                      boxShadow: [
                        BoxShadow(
                            color: const Color.fromARGB(255, 68, 67, 67),
                            offset:
                                isui ? const Offset(0, 0) : const Offset(2, 2),
                            spreadRadius: isui ? 0 : 2,
                            blurRadius: isui ? 0 : 3)
                      ]),
                  child: Center(
                    child: Text(
                      'UI/UX DESIGNS',
                      style: GoogleFonts.aldrich(
                        fontSize: 20,
                        color: isui ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                onHover: (hov) {
                  if (hov) {
                    setState(() => isApp = true);
                  } else {
                    setState(() => isApp = false);
                  }
                },
                child: Container(
                  margin: const EdgeInsets.all(15),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: isApp ? Colors.white : AppTheme.backgroundColor,
                      boxShadow: [
                        BoxShadow(
                            color: const Color.fromARGB(255, 68, 67, 67),
                            offset:
                                isApp ? const Offset(0, 0) : const Offset(2, 2),
                            spreadRadius: isApp ? 0 : 2,
                            blurRadius: isApp ? 0 : 3)
                      ]),
                  child: Center(
                    child: Text(
                      'APPS',
                      style: GoogleFonts.aldrich(
                        fontSize: 20,
                        color: isApp ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                onHover: (hov) {
                  if (hov) {
                    setState(() => isWeb = true);
                  } else {
                    setState(() => isWeb = false);
                  }
                },
                child: Container(
                  margin: const EdgeInsets.all(15),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: isWeb ? Colors.white : AppTheme.backgroundColor,
                      boxShadow: [
                        BoxShadow(
                            color: const Color.fromARGB(255, 68, 67, 67),
                            offset:
                                isWeb ? const Offset(0, 0) : const Offset(2, 2),
                            spreadRadius: isWeb ? 0 : 2,
                            blurRadius: isWeb ? 0 : 3)
                      ]),
                  child: Center(
                    child: Text(
                      'WEBSITES',
                      style: GoogleFonts.aldrich(
                        fontSize: 20,
                        color: isWeb ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
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
            'PROJECTS',
            style: GoogleFonts.aldrich(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 68, 67, 67),
            ),
          ),
              const SizedBox(
                height: 50,
              ),
              // Row(
              //   children: [
              //     // Text(
              //     //   'Scroll to view more',
              //     //   style: GoogleFonts.aldrich(
              //     //     fontSize: 13,
              //     //     fontWeight: FontWeight.bold,
              //     //     color: Colors.white,
              //     //   ),
              //     // ),
              //     const Icon(
              //       Icons.arrow_right_alt_sharp,
              //       color: Colors.white,
              //     )
              //   ],
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              SizedBox(
                height: 200,
                child: PageView(
                  controller: _projectpageController,
                  children:  [
                    InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const DesignPage())),
                onHover: (hov) {
                  if (hov) {
                    setState(() => isui = true);
                  } else {
                    setState(() => isui = false);
                  }
                },
                child: Container(
                  margin: const EdgeInsets.all(15),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: isui ? Colors.white : AppTheme.backgroundColor,
                      boxShadow: [
                        BoxShadow(
                            color: const Color.fromARGB(255, 68, 67, 67),
                            offset:
                                isui ? const Offset(0, 0) : const Offset(2, 2),
                            spreadRadius: isui ? 0 : 2,
                            blurRadius: isui ? 0 : 3)
                      ]),
                  child: Center(
                    child: Text(
                      'UI/UX DESIGNS',
                      style: GoogleFonts.aldrich(
                        fontSize: 20,
                        color: isui ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                onHover: (hov) {
                  if (hov) {
                    setState(() => isApp = true);
                  } else {
                    setState(() => isApp = false);
                  }
                },
                child: Container(
                  margin: const EdgeInsets.all(15),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: isApp ? Colors.white : AppTheme.backgroundColor,
                      boxShadow: [
                        BoxShadow(
                            color: const Color.fromARGB(255, 68, 67, 67),
                            offset:
                                isApp ? const Offset(0, 0) : const Offset(2, 2),
                            spreadRadius: isApp ? 0 : 2,
                            blurRadius: isApp ? 0 : 3)
                      ]),
                  child: Center(
                    child: Text(
                      'APPS',
                      style: GoogleFonts.aldrich(
                        fontSize: 20,
                        color: isApp ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                onHover: (hov) {
                  if (hov) {
                    setState(() => isWeb = true);
                  } else {
                    setState(() => isWeb = false);
                  }
                },
                child: Container(
                  margin: const EdgeInsets.all(15),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: isWeb ? Colors.white : AppTheme.backgroundColor,
                      boxShadow: [
                        BoxShadow(
                            color: const Color.fromARGB(255, 68, 67, 67),
                            offset:
                                isWeb ? const Offset(0, 0) : const Offset(2, 2),
                            spreadRadius: isWeb ? 0 : 2,
                            blurRadius: isWeb ? 0 : 3)
                      ]),
                  child: Center(
                    child: Text(
                      'WEBSITES',
                      style: GoogleFonts.aldrich(
                        fontSize: 20,
                        color: isWeb ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: SmoothPageIndicator(
                  controller: _projectpageController,
                  count: 3,
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
