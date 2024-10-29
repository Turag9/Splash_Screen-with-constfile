import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/homepage.dart';
class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  startTimer() async{
    Timer(Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //call Function
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/recipe_logo.png",
                height: 200,
                width: 200,
              ),
              SizedBox(height: 10,),
              Text("Recipe App",
              style:GoogleFonts.lato(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
              )
              ),
              SizedBox(height: 10,),
              CircularProgressIndicator(color: Colors.redAccent,)
            ],
          ),
        ),
      ),
    );
  }
}
