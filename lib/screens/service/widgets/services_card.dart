import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/theme.dart';

class ServiceCard extends StatefulWidget {
  final String label;
  final int index;
  const ServiceCard({super.key, 
    required this.label,
    required this.index,
  });

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  // bool isHover = false;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    // const backgroundColor = Color(0xff2E3239);
    // Offset distance = isPressed ? const Offset(10, 10) : const Offset(28, 28);
    // double blur = isPressed ? 5.0 : 30.0;
    return InkWell(
      onTap: () {},
      onHover: (hov) {
        if (hov) {
          setState(() => isPressed = true);
        } else {
          setState(() => isPressed = false);
        }
      },
      child: Container(
        margin: const EdgeInsets.all(15),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: isPressed ? Colors.white : AppTheme.backgroundColor,
            boxShadow: [
              BoxShadow(
                  color: const Color.fromARGB(255, 68, 67, 67),
                  offset: isPressed ? const Offset(0, 0) : const Offset(2, 2),
                  spreadRadius: isPressed ? 0 : 2,
                  blurRadius: isPressed ? 0 : 3)
            ]),
        child: Center(
          child: Text(
            widget.label,
            style: GoogleFonts.aldrich(
              fontSize: 20,
              color: isPressed ? Colors.black : Colors.white,
            ),
          ),
        ),
      ),
    );

    // InkWell(
    //   onTap: () {
    //     widget.index;
    //   },
    //   onHover: (hov) {
    //     if (hov) {
    //       setState(() => isHover = true);
    //     } else {
    //       setState(() => isHover = false);
    //     }
    //   },
    //   child: Container(
    //     margin: const EdgeInsets.all(15),
    //     width: 200,
    //     height: 200,
    //     decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(20),
    //         color: isHover ? Color(0xff115210) : Color(0xffACD18F),
    //         boxShadow: [
    //           BoxShadow(
    //             color: isHover
    //                 ? Color(0xffACD18F).withOpacity(0.5)
    //                 : Color(0xff115210),
    //             spreadRadius: 5,
    //             blurRadius: 7,
    //             offset: Offset(0, 3),
    //           )
    //         ]),
    //     child: Center(
    //       child: Text(
    //         widget.label,
    //         style: GoogleFonts.aldrich(
    //           fontSize: 20,
    //           color: isHover ? Colors.white : Color(0xff115210),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
