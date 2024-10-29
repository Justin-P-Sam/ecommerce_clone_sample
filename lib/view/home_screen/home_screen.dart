// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers


import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_clone_sample/dummy_db.dart';
import 'package:ecommerce_clone_sample/utilits/color_constants.dart';
import 'package:ecommerce_clone_sample/utilits/image_constants.dart';
import 'package:ecommerce_clone_sample/view/global_widgets/custom_input_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List <String> list =[
"Beauty",
"Fashion",
"Kids",
"Mens",
"Womens",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImageConstants.MYAPPLOGO,
              height: 31, 
              width: 38,
              fit: BoxFit.fill,
            ),
            SizedBox(width: 9), 
            Text(
              "Stylish",
              style: GoogleFonts.libreCaslonText(
                color: ColorConstants.PRIMARYCOLOR,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),

            ),
          ],
        ),
        actions: [CircleAvatar()],
        ),
        body: Column(children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: CustomTextFieldwithShadow(),
             ),
             _buildAllFeaturedSection(),
        ],
        ),
        
        
        );
 
 
  }

  Column _buildAllFeaturedSection() {
    return Column(
      children: [
        Row(
          children: [
            Text("All Featured"),
            Spacer(),
            Container(
              child: Row(
                children: [Text("sort"), Icon(Icons.swap_vert)],
              ),
            ),
            Container(
              child: Row(
                children: [Text("Filter"), Icon(Icons.filter_alt_outlined)],
              ),
            )
          ],
        ),
        SizedBox(height: 16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              5,
              (index) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 28,
                    ),
                  ),
                  SizedBox(height: 4,width: 16,),
                  Text(list[index],),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 16,),
     CarouselSlider(
  options: CarouselOptions( height: 400,
      aspectRatio: 16/9,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      enlargeFactor: 0.3,
      onPageChanged: (index, reason) {
        
      },
      scrollDirection: Axis.horizontal,),
  items:List.generate(
              DummyDb().FeaturedItemsList.length,
              (index) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:Container(
            width: 350,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageConstants.CAROUSEL),
                fit: BoxFit.cover)))
                  ),
                  
                ],
              ),
            ),
)
      ],
    );
  }
}












