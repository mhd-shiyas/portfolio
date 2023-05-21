import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DribbleCard extends StatefulWidget {
  const DribbleCard({super.key});

  @override
  State<DribbleCard> createState() => _TwiterCardState();
}

class _TwiterCardState extends State<DribbleCard> {
  final Uri _url =
      Uri.parse('https://dribbble.com/Designwithxiaz');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  bool isdribble = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _launchUrl();
      },
      onHover: (ins) {
        if (ins) {
          setState(() {
            isdribble = true;
          });
        } else {
          setState(() {
            isdribble = false;
          });
        }
      },
      child: CircleAvatar(
        backgroundColor: Colors.black,
        maxRadius: isdribble ? 20 : 15,
        child: Image.asset(
          'assets/images/dribble.png',
          fit: BoxFit.fill,
          // color: Colors.white,
        ),
      ),
    );
  }
}
