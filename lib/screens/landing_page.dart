import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/providers/scroll_provider.dart';

import 'package:portfolio_website/screens/home/home_page.dart';

import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../utils/theme.dart';
import '../widgets/appbar_port.dart';
import 'about/about_page.dart';
import 'service/service_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  // ScrollController sc = ScrollController();
  // @override
  // void initState() {
  //   sc = ScrollController();
  //   sc.addListener(() {});
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    List pages = [
      HomePage(),
      AboutPage(),
      ServicePage(),
      Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Email: chmuhdshiyas@gmail.com',
                style: GoogleFonts.aldrich(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Mobile: +919061267606',
                style: GoogleFonts.aldrich(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    ];
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size(100, 100), child: PortAppbar()),
      backgroundColor: AppTheme.backgroundColor,
      body: ScrollablePositionedList.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) => pages[index],
        itemScrollController: scrollProvider.itemScrollController,
      ),
      // body: Container(
      //   child: ListView(
      //     controller: sc,
      //     children: [
      //       ...List.generate(
      //           LandingUtils.pages.length, (index) => LandingUtils())
      //       // AppBarIcon(),
      //       // Padding(
      //       //   padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      //       //   child: HomePage(),
      //       // ),
      //       // Padding(
      //       //   padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      //       //   child: AboutPage(),
      //       // ),
      //       // Padding(
      //       //   padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      //       //   child: ServicePage(),
      //       // ),
      //       // Padding(
      //       //   padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      //       //   child: ContactPage(),
      //       // ),
      //       // PortAppbar(),
      //     ],
      //   ),
      // )
      //   controller: sc,
      //   children: [
      //     ...List.generate(
      //         20,
      //         (index) => Container(
      //               margin: const EdgeInsets.all(10),
      //               color: index.isEven ? Colors.pinkAccent : Colors.white,
      //               height: 100,
      //               width: double.infinity,
      //               child: Text('Container $index'),
      //             ))
      //   ],
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     sc.animateTo(
      //       100,
      //       duration: const Duration(seconds: 2),
      //       curve: Curves.easeIn,
      //     );
      //   },
      //   child: const Icon(Icons.timer_10),
      // ),
    );
  }
}
