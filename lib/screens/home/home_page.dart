import 'package:flutter/material.dart';
import 'package:portfolio_website/responsive/responsive.dart';
import 'package:portfolio_website/screens/home/widgets/name_widget.dart';
import 'package:portfolio_website/screens/home/widgets/pic_widget.dart';

import '../../utils/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (PortResponsive.isDesktop(context)) {
      return Container(
        height: 600,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppTheme.backgroundColor,
          borderRadius: BorderRadius.circular(20),
          // boxShadow: [
          //   BoxShadow(
          //     color: Color(0xff115210).withOpacity(0.5),
          //     spreadRadius: 5,
          //     blurRadius: 7,
          //     offset: Offset(0, 3),
          //   )
          // ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [PicWidget(), NameWidget()],
        ),
      );
    } else if (PortResponsive.isTablet(context)) {
      return Container(
          // height: 600,
          width: double.infinity,
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppTheme.backgroundColor,
            borderRadius: BorderRadius.circular(20),
            // boxShadow: [
            //   BoxShadow(
            //     color: Color(0xff115210).withOpacity(0.5),
            //     spreadRadius: 5,
            //     blurRadius: 7,
            //     offset: Offset(0, 3),
            //   )
            // ]
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [NameWidget(), PicWidget()]));
    } else {
      return Container(
          // height: 600,
          width: double.infinity,
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppTheme.backgroundColor,
            borderRadius: BorderRadius.circular(20),
            // boxShadow: [
            //   BoxShadow(
            //     color: Color(0xff115210).withOpacity(0.5),
            //     spreadRadius: 5,
            //     blurRadius: 7,
            //     offset: Offset(0, 3),
            //   )
            // ]
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [NameWidget(), PicWidget()]));
    }
  }
}
