import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalWidget extends StatelessWidget {
  final String keyName;
  final String value;
  final double keySize;
  final double valueSize;
  const PersonalWidget(
      {Key? key,
      required this.keyName,
      required this.value,
      this.keySize = 10,
      this.valueSize = 10})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$keyName : ',
          style: GoogleFonts.michroma(
            fontWeight: FontWeight.bold,
            fontSize: keySize,
            color: Colors.black,
          ),
        ),
        Text(
          value,
          style: GoogleFonts.michroma(
            fontWeight: FontWeight.bold,
            fontSize: valueSize,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
