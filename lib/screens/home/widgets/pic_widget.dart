import 'package:flutter/material.dart';

class PicWidget extends StatelessWidget {
  const PicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 600,
          width: 600,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black,
          ),
        ),
        Positioned(
            bottom: -40,
            left: -80,
            child: SizedBox(
              height: 500,
              width: 500,
              child: Image.asset(
                'assets/images/scrop.png',
                // height: 400,
                // width: 500,
                fit: BoxFit.cover,
              ),
            )),
      ],
    );
  }
}
