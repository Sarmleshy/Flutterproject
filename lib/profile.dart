
import 'package:flutter/material.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  void _showSnackbar(BuildContext context, content) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(content),
        duration: Duration(seconds: 3),
        action: SnackBarAction(
          label: 'OK',
          onPressed: () {
            // You can add functionality to the "Dismiss" button here
            // Navigator.pop(context);
          },
        ),
      ),
    );
  }
  String _gender = '';
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController checkController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Profile"),
          ],
        ),
        actions: [
          
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(onPressed: (){
                nameController.clear();
                emailController.clear();
                phoneController.clear();
                addressController.clear();
                checkController.clear();
;              }, icon: Icon(Icons.reset_tv_rounded)),
            ],
          ),
        ],
        
        backgroundColor: Colors.black,
        
      ),
      backgroundColor: Colors.grey[400],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 10,),
      
               
                   
                //avatar
                  CircleAvatar(),
                  const SizedBox(height: 15,),
                //TextFields
               
                //name
                TextField(
                   controller: nameController,
                  keyboardType: TextInputType.name,
                 
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      labelText: "name",
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: "name",
                      hintStyle: TextStyle(color: Colors.grey[500]))),
              const SizedBox(height: 10),
           
                const SizedBox(height: 10,),
                //email
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
              const SizedBox(height: 10),
                 const SizedBox(height: 10,),
                //Radio button 
                 RadioListTile(
                  
            title: Text("Male"),
            value: "male", 
            groupValue: _gender, 
            onChanged: (value){
              setState(() {
                  _gender = value.toString();
              });
            },
        ),
      
        RadioListTile(
            title: Text("Female"),
            value: "female", 
            groupValue: _gender, 
            onChanged: (value){
              setState(() {
                  _gender = value.toString();
              });
            },
        ),
             const SizedBox(height: 10,),
              //phone number
              const SizedBox(height: 10,),
               TextField(
                   controller: phoneController,
                  keyboardType: TextInputType.name,
                 
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      labelText: "Phone Number",
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: "Phone Number",
                      hintStyle: TextStyle(color: Colors.grey[500]))),
               const SizedBox(height: 10,),
      
                //address
                 TextField(
                   controller: addressController,
                  keyboardType: TextInputType.name,
                 
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal)),
                      labelText: "Address",
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: "Address",
                      hintStyle: TextStyle(color: Colors.grey[500]))),
                const SizedBox(height: 10,),
      
                //save button
                const SizedBox(height: 10,),
                MaterialButton(
                  onPressed: (){
                    _showSnackbar(context, "Saved Successfully");
                    
                    nameController.clear();
                emailController.clear();
                phoneController.clear();
                addressController.clear();
                checkController.clear();
                  },
                  child: Text("Save"),
                  color: Colors.lightBlue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}