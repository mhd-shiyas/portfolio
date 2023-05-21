import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GitHubCard extends StatefulWidget {
  const GitHubCard({super.key});

  @override
  State<GitHubCard> createState() => _TwiterCardState();
}

class _TwiterCardState extends State<GitHubCard> {
  final Uri _url = Uri.parse('https://github.com/mhd-shiyas');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  bool isGitHub = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _launchUrl();
      },
      onHover: (ins) {
        if (ins) {
          setState(() {
            isGitHub = true;
          });
        } else {
          setState(() {
            isGitHub = false;
          });
        }
      },
      child: CircleAvatar(
        backgroundColor: Colors.black,
        maxRadius: isGitHub ? 20 : 15,
        child: Image.asset(
          'assets/images/github.png',
          fit: BoxFit.fill,
          color: Colors.white,
        ),
      ),
    );
  }
}
