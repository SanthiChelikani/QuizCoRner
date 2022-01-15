import 'package:flutter/material.dart';
import 'package:isro_quiz/screens/signin.dart';
import 'package:isro_quiz/widgets/widgets.dart';

import 'homescreen.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey=GlobalKey<FormState>();
  late String email,password,name;
  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title:appBar(context),
          centerTitle: true,
          toolbarHeight: 150,
          backgroundColor: Colors.white,
          elevation: 10.0,

        ),
        resizeToAvoidBottomInset: false,
        body:Form(
          key: formKey,
          child: Container(
            margin:EdgeInsets.all(24),
            child: Column(children: [
              SizedBox(height:120),
              TextFormField(


                decoration:InputDecoration(
                    hintText:"Name"
                ),
                onChanged: (val){
                  name=val;
                },

              ),
              SizedBox(height:8),
              TextFormField(


                decoration:InputDecoration(
                    hintText:"Email"
                ),
                onChanged: (val){
                  email=val;
                },

              ),
              SizedBox(height:8),
              TextFormField(


                decoration:InputDecoration(
                    hintText:"Pasword"
                ),
                onChanged: (val){
                  password=val;
                },
                obscureText: _obscureText,

              ),
              SizedBox(height:50),
              GestureDetector(
                onTap: (){

                },
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute (builder: (context)=>HomeScreen()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30)),
                    child: Text("Sign Up",
                      style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(height:18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account? ',
                      style:
                      TextStyle(color: Colors.black87, fontSize: 17)),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute (builder: (context)=>SignIn()
                      ));
                    },
                    child: Text('Sign In',
                        style: TextStyle(
                            color: Colors.black87,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            fontSize: 17)),
                  ),
                ],
              )
            ],),
          ),
        )
    );
  }
}
