// import 'package:jk_app/TestTwo.dart';
import 'package:jk_app/testTwo.dart';
import 'package:jk_app/login.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class MyTestPage extends StatefulWidget {
  MyTestPage(
    this.name,
    {super.key});
  String name;

  @override
  State<MyTestPage> createState() => _MyTestPageState();
}

class _MyTestPageState extends State<MyTestPage> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: Text(widget.name),
      ),
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const SizedBox(height: 30.0,),
        TextField(
          controller: userNameController,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400),
              ),
             fillColor: Colors.grey.shade200,
             filled: true,            
           
             
            labelText: "Username",
        )
        ),
        const SizedBox(height: 10,),
        TextField(
          keyboardType: TextInputType.emailAddress,
          controller: emailAddressController,
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400),
              ),
             fillColor: Colors.grey.shade200,
             filled: true,            
           
             
            labelText: "Email",
        )
        ),
      

        GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
           Fluttertoast.showToast(msg: "Welcome Leshy");
          return MyTestPageTwo(name: userNameController.text ,email: emailAddressController.text,);
        }));
      },
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(color: Colors.black, 
         borderRadius: BorderRadius.circular(8),),
       
        child: const Center(
          child: Text("Submit",
          style: TextStyle(color: Colors.white, 
          fontWeight: FontWeight.bold,
          fontSize: 18,) ,),
          
      )
      ),
    )
      ]
      )
    );
  }
}