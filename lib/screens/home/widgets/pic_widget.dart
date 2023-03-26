import 'package:flutter/material.dart';

class PicWidget extends StatelessWidget {
  const PicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 500,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black,
          ),
        ),
        Positioned(
            bottom: -40,
            left: -80,
            child: Image.asset(
              'assets/images/rizcop.png',
              fit: BoxFit.cover,
            )),
      ],
    );
  }
}
