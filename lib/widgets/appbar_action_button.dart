import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/providers/scroll_provider.dart';
import 'package:portfolio_website/responsive/responsive.dart';
import 'package:provider/provider.dart';

class AppBarActionButton extends StatefulWidget {
  // final String label;
  // final int index;
 const AppBarActionButton({super.key}
      // required this.label,
      // required this.index,
      );

  @override
  State<AppBarActionButton> createState() => _AppBarActionButtonState();
}

class _AppBarActionButtonState extends State<AppBarActionButton> {
  bool isHome = false;
  bool isAbout = false;
  bool isServices = false;
  bool isProjects = false;

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
if(PortResponsive.isMobile(context)){
   return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: InkWell(
            onTap: () {
              // widget.index;
              scrollProvider.setCurrentPage(0);
            },
            onHover: (value) {
              if (value) {
                setState(() => isHome = true);
              } else {
                setState(() => isHome = false);
              }
            },
            child: Center(
              child: Text("HOME",
                  style: GoogleFonts.aldrich(
                      fontSize: 10,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      color: isHome
                          ? Colors.white
                          : const Color.fromARGB(255, 68, 67, 67))),
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: InkWell(
            onTap: () {
              // widget.index;
              scrollProvider.setCurrentPage(1);
            },
            onHover: (value) {
              if (value) {
                setState(() => isAbout = true);
              } else {
                setState(() => isAbout = false);
              }
            },
            child: Center(
              child: Text("ABOUT",
                  style: GoogleFonts.aldrich(
                      fontSize: 10,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      color: isAbout
                          ? Colors.white
                          : const Color.fromARGB(255, 68, 67, 67))),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: InkWell(
            onTap: () {
              // widget.index;
              scrollProvider.setCurrentPage(2);
            },
            onHover: (value) {
              if (value) {
                setState(() => isProjects = true);
              } else {
                setState(() => isProjects = false);
              }
            },
            child: Center(
              child: Text("PROJECTS",
                  style: GoogleFonts.aldrich(
                      fontSize: 10,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      color: isProjects
                          ? Colors.white
                          : const Color.fromARGB(255, 68, 67, 67))),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: InkWell(
            onTap: () {
              // widget.index;
              scrollProvider.setCurrentPage(3);
            },
            onHover: (value) {
              if (value) {
                setState(() => isServices = true);
              } else {
                setState(() => isServices = false);
              }
            },
            child: Center(
              child: Text("SERVICES",
                  style: GoogleFonts.aldrich(
                      fontSize: 10,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      color: isServices
                          ? Colors.white
                          : const Color.fromARGB(255, 68, 67, 67))),
            ),
          ),
        ),
      ],
    );
}else{
return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              // widget.index;
              scrollProvider.setCurrentPage(0);
            },
            onHover: (value) {
              if (value) {
                setState(() => isHome = true);
              } else {
                setState(() => isHome = false);
              }
            },
            child: Center(
              child: Text("HOME",
                  style: GoogleFonts.aldrich(
                      fontSize: 12,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      color: isHome
                          ? Colors.white
                          : const Color.fromARGB(255, 68, 67, 67))),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              // widget.index;
              scrollProvider.setCurrentPage(1);
            },
            onHover: (value) {
              if (value) {
                setState(() => isAbout = true);
              } else {
                setState(() => isAbout = false);
              }
            },
            child: Center(
              child: Text("ABOUT",
                  style: GoogleFonts.aldrich(
                      fontSize: 12,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      color: isAbout
                          ? Colors.white
                          : const Color.fromARGB(255, 68, 67, 67))),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              // widget.index;
              scrollProvider.setCurrentPage(2);
            },
            onHover: (value) {
              if (value) {
                setState(() => isProjects = true);
              } else {
                setState(() => isProjects = false);
              }
            },
            child: Center(
              child: Text("PROJECTS",
                  style: GoogleFonts.aldrich(
                      fontSize: 12,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      color: isProjects
                          ? Colors.white
                          : const Color.fromARGB(255, 68, 67, 67))),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              // widget.index;
              scrollProvider.setCurrentPage(3);
            },
            onHover: (value) {
              if (value) {
                setState(() => isServices = true);
              } else {
                setState(() => isServices = false);
              }
            },
            child: Center(
              child: Text("SERVICES",
                  style: GoogleFonts.aldrich(
                      fontSize: 12,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      color: isServices
                          ? Colors.white
                          : const Color.fromARGB(255, 68, 67, 67))),
            ),
          ),
        ),
      ],
    );
}
    
  }
}
