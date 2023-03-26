import 'package:flutter/material.dart';

class PortResponsive extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;
  final Widget tablet;
  const PortResponsive(
      {Key? key,
      required this.mobile,
      required this.desktop,
      required this.tablet})
      : super(key: key);

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1024 &&
      MediaQuery.of(context).size.width >= 600;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 500;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    if (width >= 600) {
      return desktop;
    } else if (width < 1024 && width >= 600) {
      return tablet;
    } else {
      return mobile;
    }
  }
}
