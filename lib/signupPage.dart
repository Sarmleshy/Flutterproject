import 'package:flutter/material.dart';
import 'package:jk_app/login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
   void _showSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Please fill in your details'),
        duration: Duration(seconds: 3),
        action: SnackBarAction(
          label: 'OK',
          onPressed: () {
          },
        ),
      ),
    );
   }
TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _mySignup(){
    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;
  }
bool myObscureText = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      body: SingleChildScrollView(
        child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
         // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox (height: 100),
              Text(
                "Leshy",
                 style: TextStyle(
                  color: Colors.white,
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                 )
              ),
              const SizedBox(height: 25),
              Text(
                "Welcome, Please sign up",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                )
              ),
              const SizedBox(height: 10),
              TextField(
                   controller: _usernameController,
                  keyboardType: TextInputType.name,
                 
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      labelText: "Username",
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: "Username",
                      hintStyle: TextStyle(color: Colors.grey[500]))),
              const SizedBox(height: 10),
           
           TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
             
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      labelText: "Email",
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.grey[500]))),
              const SizedBox(height: 10),
              TextField(
                controller: _passwordController,
                  obscureText: !myObscureText,
                  decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            myObscureText = !myObscureText;
                          });
                        },
                        child: Icon(
                          myObscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      labelText: "Password",
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey[500]))),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) {
                        //   return const ForgotPasswordPage();
                        // }));
                      },
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                        return LoginPage();
                      }),);
                        },
                        child: const Text(
                          'Already have an account?',
                          style: TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      
                    ),
                    const SizedBox(width: 30),
                    SizedBox(
                      width: 150,
                      height: 45,
                      child: ElevatedButton(
                          onPressed: () {
                            if (_emailController.text.trim().isEmpty ||
                                _passwordController.text.trim().isEmpty || _usernameController.text.trim().isEmpty) {
                                  
                                  _showSnackbar(context);
                            } else {
                              Navigator.pushNamed(context, "/");
                            }
                          },
                          child: Text("Sign Up")),
                    )
                  ],
                ),
              ),



            ],
           ),
        ),
      ),

    );
    
  }
   
}

  
