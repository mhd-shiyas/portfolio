import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkedinCard extends StatefulWidget {
  const LinkedinCard({super.key});

  @override
  State<LinkedinCard> createState() => _TwiterCardState();
}

class _TwiterCardState extends State<LinkedinCard> {
  final Uri _url =
      Uri.parse('https://www.linkedin.com/in/muhammed-shiyas-32026024a/');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  bool isLink = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _launchUrl();
      },
      onHover: (ins) {
        if (ins) {
          setState(() {
            isLink = true;
          });
        } else {
          setState(() {
            isLink = false;
          });
        }
      },
      child: CircleAvatar(
        backgroundColor: Colors.black,
        maxRadius: isLink ? 20 : 15,
        child: Image.asset(
          'assets/images/linkedin.png',
          fit: BoxFit.fill,
          // color: Colors.white,
        ),
      ),
    );
  }
}
