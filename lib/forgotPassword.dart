import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}
class _ForgotPasswordState extends State<ForgotPassword> {
   TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[300],
        elevation: 0,
      ),
body: Column(children: [
        const SizedBox(height: 50,),
         Text("Password reset"),
         const SizedBox(height: 5,),
 const SizedBox(height: 10),
           
           TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
             
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      labelText: "Email",
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.grey[500]))),
         const SizedBox(height: 5),
         MaterialButton(
          onPressed: (){},
          child: Text("Reset Password"),
          color: Colors.grey[400],
         )
      ], 
    
      ),
    );
  }
} 