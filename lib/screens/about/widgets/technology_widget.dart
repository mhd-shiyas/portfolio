import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/theme.dart';

class TechnologyWidget extends StatelessWidget {
  final String text;
  final double size;
  const TechnologyWidget({Key? key, required this.text, this.size = 10}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.arrow_right,
          color: AppTheme.textColor1,
        ),
        Text(
          text,
          style: GoogleFonts.michroma(
            fontWeight: FontWeight.bold,
            fontSize: size,
            color: AppTheme.textColor1,
          ),
        ),
      ],
    );
  }
}
