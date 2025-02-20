// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_clone_sample/utilits/color_constants.dart';
import 'package:ecommerce_clone_sample/utilits/image_constants.dart';
import 'package:ecommerce_clone_sample/view/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 17),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "1",
                style: GoogleFonts.montserrat(
                    color: ColorConstants.BLACK,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              Text(
                "/3",
                style: GoogleFonts.montserrat(
                    color: ColorConstants.GREYSHADE1,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ],
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(right: 17.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
        context, MaterialPageRoute(
          builder: (context) => LoginScreen(),));
                },
                child: Text(
                  "Skip",
                  style: GoogleFonts.montserrat(
                      color: ColorConstants.BLACK,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
      body: 
             Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 22),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImageConstants.ONBOARDING1,
                      height: 300,
                      width: 300,
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Choose Products",
                      style: GoogleFonts.montserrat(
                          color: ColorConstants.BLACK,
                          fontWeight: FontWeight.w900,
                          fontSize: 24),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          color: ColorConstants.GREYSHADE1,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          
        
      
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Prev",
              style: GoogleFonts.montserrat(
                  color: ColorConstants.GREYSHADE1,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
            InkWell(
               onTap: () {
                 Navigator.push(
        context, MaterialPageRoute(
          builder: (context) => LoginScreen(),));
               },
              child: Text(
                "Next",
                style: GoogleFonts.montserrat(
                    color: ColorConstants.PRIMARYCOLOR,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

