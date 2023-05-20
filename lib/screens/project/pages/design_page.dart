import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/utils/theme.dart';

class DesignPage extends StatelessWidget {
  const DesignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.backgroundColor,
      ),
      body: ListView(children: [
        Container(
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          color: AppTheme.backgroundColor,
          child: Column(
            children: [
              Container(
                height: 305,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white, width: 2)),
                child: Column(
                  children: [
                    Container(
                        height: 250,
                        margin: const EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/images/travelappdesign.jpg',
                          fit: BoxFit.cover,
                        )),
                    Text(
                      'Travel App Design',
                      style: GoogleFonts.aldrich(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 305,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white, width: 2)),
                child: Column(
                  children: [
                    Container(
                        height: 250,
                        margin: const EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/images/realestate.jpeg',
                          fit: BoxFit.cover,
                        )),
                    Text(
                      'RealEstate App Design',
                      style: GoogleFonts.aldrich(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 305,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white, width: 2)),
                child: Column(
                  children: [
                    Container(
                        height: 250,
                        margin: const EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/images/serviceapp.png',
                          fit: BoxFit.cover,
                        )),
                    Text(
                      'Service App Design',
                      style: GoogleFonts.aldrich(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
