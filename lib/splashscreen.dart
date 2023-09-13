import 'dart:async';
import 'package:flutter/material.dart';
import 'package:jk_app/signupPage.dart';
class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
   @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 15),(() => 
     Navigator.pushReplacement(context,
      MaterialPageRoute(builder: ((context) => Signup())))));
  }
  @override
  Widget build(BuildContext context) {
    Color color1 = Colors.red;
    Color color2 = Colors.orange;
    double blendValue = 0.5;
    Color blendedColor = Color.lerp(color1, color2, blendValue)!;
    return Scaffold(
       backgroundColor: blendedColor.withOpacity(1.0),
        
      body: SafeArea(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
           Image.asset("lib/assets/images/S.png", height: 300 ,width: 300,),
      
            Text("SLEEESH",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              
            )
            
            ),
            const SizedBox(height:40),
            CircularProgressIndicator()
           ],
        ),
      ),  
      ),
    );
  }
}