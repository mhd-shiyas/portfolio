import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TwitterCard extends StatefulWidget {
  const TwitterCard({super.key});

  @override
  State<TwitterCard> createState() => _TwiterCardState();
}

class _TwiterCardState extends State<TwitterCard> {
  final Uri _url =
      Uri.parse('https://twitter.com/ShiyasCh?t=tuovUET9bxBT9xVg7T0GxQ&s=09');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  bool isTwitter = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _launchUrl();
      },
      onHover: (ins) {
        if (ins) {
          setState(() {
            isTwitter = true;
          });
        } else {
          setState(() {
            isTwitter = false;
          });
        }
      },
      child: CircleAvatar(
        backgroundColor: Colors.black,
        maxRadius: isTwitter ? 20 : 15,
        child: Image.asset(
          'assets/images/twitter.png',
          fit: BoxFit.fill,
          // color: Colors.white,
        ),
      ),
    );
  }
}
