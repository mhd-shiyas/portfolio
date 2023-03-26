import 'package:flutter/material.dart';
import 'package:portfolio_website/providers/scroll_provider.dart';
import 'package:provider/provider.dart';

import 'screens/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => ScrollProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MUHAMMED SHIYAS',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LandingPage(),
      ),
    );
  }
}
