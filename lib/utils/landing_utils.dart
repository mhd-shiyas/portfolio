import 'package:flutter/material.dart';

import '../screens/about/about_page.dart';

import '../screens/home/home_page.dart';
import '../screens/service/service_page.dart';



class LandingUtils {
  static List pages = [
    const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: HomePage(),
    ),
    const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: AboutPage(),
    ),
     Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: ServicePage(),
    ),
    // const Padding(
    //   padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
    //   child: ContactPage(),
    // ),
  ];
}
