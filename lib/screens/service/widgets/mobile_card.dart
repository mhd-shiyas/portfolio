import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/theme.dart';

class MobileCard extends StatefulWidget {
  final String label;
  const MobileCard({super.key, 
    required this.label,
  });

  @override
  State<MobileCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<MobileCard> {
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
        height: 100,
        width: 100,
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
  }
}
