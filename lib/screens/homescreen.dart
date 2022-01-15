import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:isro_quiz/screens/quiz/quizpage.dart';
import 'package:isro_quiz/screens/signin.dart';
import 'package:isro_quiz/widgets/widgets.dart';

import 'learning/topicselection.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon:Icon(
              Icons.logout,
              color: Colors.red,
              size: 30,
              //alignment:Alignment.bottomLeft
            ),
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute (builder: (context)=>SignIn()
              ));
            },
          )
        ],
        title: appBar(context),
        backgroundColor: Colors.white,
        centerTitle: true,
        toolbarHeight: 150,
        elevation: 0.0,
      ),
      body: Container(
        alignment: Alignment.center,
        margin:EdgeInsets.all(24),
        child: Column(children: [
          SizedBox(height:10),
          GestureDetector(
            child: GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute (builder: (context)=>TopicSelection()));
              },

              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: 150,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12)),
                child: Text("Learn",
                  style: TextStyle(fontSize: 46,fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(height:50),
          GestureDetector(
            child: GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute (builder: (context)=>Quizpage()));
              },

              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: 150,

                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                decoration: BoxDecoration(

                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12)),
                child: Text("Quiz",
                  style: TextStyle(fontSize: 46,fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),

        ],),
      ),
    );
  }
}
