import 'package:flutter/material.dart';
import 'package:portfolio_website/providers/scroll_provider.dart';

import 'package:portfolio_website/screens/home/home_page.dart';
import 'package:portfolio_website/screens/project/projects_screen.dart';

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
      const HomePage(),
      const AboutPage(),
      const ProjectsScreen(),
      ServicePage(),
    ];
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize:  Size(100, 100), child: PortAppbar()),
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
