import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';
class MyTestPageTwo extends StatefulWidget {
  MyTestPageTwo(
    
    {required this.name, required this.email,
    super.key});
 String name, email ;

  @override
  State<MyTestPageTwo> createState() => _MyTestPageTwoState();
}

class _MyTestPageTwoState extends State<MyTestPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
      
          Text("Here's your login details"),
          Text("${widget.name} ${Random().nextInt(10)}"  ),
          Text(" Email: ${widget.email}  "),
         
          
        ],
    
        ),
      ),
      
    );
  }
}
