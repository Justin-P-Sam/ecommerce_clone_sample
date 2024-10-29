
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_clone_sample/utilits/color_constants.dart';
import 'package:flutter/material.dart';

class custom_input_field extends StatelessWidget {
  const custom_input_field({
    super.key, required String hintTex, required IconData prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
     decoration: InputDecoration(
        prefixIcon: const Icon(Icons.lock),
       labelText: 'Password',
       labelStyle: const TextStyle(color: ColorConstants.GREYSHADE2),
       suffixIcon:  const Icon(Icons.remove_red_eye),
       filled: true,
       fillColor: ColorConstants.GREYSHADE3,
       border: OutlineInputBorder(
         borderRadius: BorderRadius.circular(12),
         borderSide: const BorderSide(color: ColorConstants.GREYSHADE4),
       ),
     ),
               );
  }
}


class CustomTextFieldwithShadow extends StatelessWidget {
  const CustomTextFieldwithShadow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(
       color: Colors.white,
       
       boxShadow: [
         BoxShadow(
           offset: Offset(0,2),
           blurRadius: 9
         )]),
      child: TextField(
           decoration: 
           InputDecoration(
              prefixIcon: Icon(Icons.search),
             hintText: 'Search any Product',
             labelStyle: TextStyle(color: ColorConstants.GREYSHADE2),
             suffixIcon:  Icon(Icons.mic),
             filled: true,
             fillColor: ColorConstants.GREYSHADE3,
             
           ),
          ),
    );
  }
}