import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InstagramCard extends StatefulWidget {
  const InstagramCard({super.key});

  @override
  State<InstagramCard> createState() => _TwiterCardState();
}

class _TwiterCardState extends State<InstagramCard> {
  final Uri _url =
      Uri.parse('https://instagram.com/_.xiaz._?igshid=YmMyMTA2M2Y=');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  bool isInsta = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _launchUrl();
      },
      onHover: (ins) {
        if (ins) {
          setState(() {
            isInsta = true;
          });
        } else {
          setState(() {
            isInsta = false;
          });
        }
      },
      child: CircleAvatar(
        backgroundColor: Colors.black,
        maxRadius: isInsta ? 20 : 15,
        child: Image.asset(
          'assets/images/insta.png',
          fit: BoxFit.fill,
          // color: Colors.white,
        ),
      ),
    );
  }
}
