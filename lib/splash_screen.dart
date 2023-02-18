import 'dart:async';

import 'package:e_commerce_app/home_screen.dart';
import 'package:e_commerce_app/register_screen.dart';
import 'package:flutter/material.dart';
class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {

  void initState(){
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>register_screen()));
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xff4776E6),
              Color(0xff8E54E9),
            ]
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 44,
                width: 309,
                // color: Colors.red,
                decoration: BoxDecoration(

                  image: DecorationImage(
                    image: AssetImage("images/logo.png"),
                  )
                ),
              ),

            ),
            SizedBox(height: 19,),
            Text("From top to bottom",style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: Colors.white
            ),),
            SizedBox(height: 10,),
            CircularProgressIndicator(
              color: Colors.white,

            ),
          ],
        ),
      ),

    );
  }
}
