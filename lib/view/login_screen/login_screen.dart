// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors


import 'package:ecommerce_clone_sample/utilits/color_constants.dart';
import 'package:ecommerce_clone_sample/view/getstart_screen/getstart_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 198,left:32 ,top: 63),
            child: Text("Welcome",
            style: GoogleFonts.montserrat(
                    color: ColorConstants.BLACK,
                    fontWeight: FontWeight.bold,
                    fontSize: 36),),
          ),
         Padding(
           padding: const EdgeInsets.only(right: 250,left:32 ,),
           child: Text("Back!",
           
            style: GoogleFonts.montserrat(
                    color: ColorConstants.BLACK,
                    fontWeight: FontWeight.bold,
                    fontSize: 36),),
         ),
         SizedBox(height: 36,),
         Padding(
           padding: const EdgeInsets.only(left: 26,right: 26 , ),
           child: TextFormField(
             decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
               labelText: 'Username or Email',
               labelStyle: TextStyle(color: ColorConstants.GREYSHADE2),
               filled: true,
               fillColor: ColorConstants.GREYSHADE3,
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(12),
                 borderSide: BorderSide(color: ColorConstants.GREYSHADE4),
               ),
               
               
              
             ),
             
           ),
         ),
         SizedBox(height: 31,),
           Padding(
           padding: const EdgeInsets.only(left: 26,right: 26 , ),
              
            ),
            
            SizedBox(height: 9,),
            Padding(
              padding: const EdgeInsets.only(left: 255),
              child: Text("Forgot Password?",
              style: GoogleFonts.montserrat(
                    color: ColorConstants.PRIMARYCOLOR,
                    fontWeight: FontWeight.w500,
                    fontSize: 12),),
            ),
             SizedBox(height: 76,),
            Container(
              height: 55,
              width: 355,
              color: ColorConstants.PRIMARYCOLOR,
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(
    builder: (context) => GetStartedScreen(),
  ),
  (Route<dynamic> route) => false,  // Remove all previous routes
);
                },
                  
                  child: Text("Login",
                  style: GoogleFonts.montserrat(
                      color: ColorConstants.WHITE,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),),
                ),
                ),
            ),
            SizedBox(height: 75,),
            Text("- OR Continue with -",
            style: GoogleFonts.montserrat(
                    color: ColorConstants.GREYSHADE5,
                    fontWeight: FontWeight.w600,
                    fontSize: 12),),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 95),
                      child: Center(
                        child: Row(
                          children: [
                        Container(
                         width: 70.0,
                        height: 70.0,
                   decoration: BoxDecoration(
                   color: const Color(0xff7c94b6),
              
                    borderRadius: BorderRadius.all( Radius.circular(50.0)),
                   border: Border.all(
                 color:ColorConstants.PRIMARYCOLOR,
                 width: 4.0,
                        ),
                      ),
                      
                     ),
                            SizedBox(width: 10,),
                            Container(
                         width: 70.0,
                        height: 70.0,
                   decoration: BoxDecoration(
                   color: const Color(0xff7c94b6),
              
                    borderRadius: BorderRadius.all( Radius.circular(50.0)),
                   border: Border.all(
                 color:ColorConstants.PRIMARYCOLOR,
                 width: 4.0,
                        ),
                      ),
                     ),
                            SizedBox(width: 10,),
                            Container(
                         width: 70.0,
                        height: 70.0,
                   decoration: BoxDecoration(
                   color: const Color(0xff7c94b6),
              
                    borderRadius: BorderRadius.all( Radius.circular(50.0)),
                   border: Border.all(
                 color:ColorConstants.PRIMARYCOLOR,
                 width: 4.0,
                        ),
                      ),
                     ),
                            ],
                        ),
                      ),
                    ),
                    SizedBox(height: 28,),
                    Padding(
                      padding: const EdgeInsets.only(left: 95,),
                      child: Row(
                        children: [
                          Text("Create An Account",
                                      style: GoogleFonts.montserrat(
                          color: ColorConstants.GREYSHADE5,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),),
                          SizedBox(width: 5,),
                          Text("Sign Up",
                                      style: GoogleFonts.montserrat(
                          color: ColorConstants.PRIMARYCOLOR,
                          fontWeight: FontWeight.bold,
                          
                          fontSize: 14),)
                        ],
                      ),
                    ),
                    
        ]
        ),
    );
  }
}