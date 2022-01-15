import 'package:flutter/material.dart';
import 'package:isro_quiz/screens/quiz/quizpage.dart';

import '../homescreen.dart';
import 'Centers.dart';
import 'Customerr Satellites.dart';
import 'Launchers.dart';
import 'Spacecrafts.dart';
class TopicSelection extends StatefulWidget {
  const TopicSelection({Key? key}) : super(key: key);

  @override
  _TopicSelectionState createState() => _TopicSelectionState();
}

class _TopicSelectionState extends State<TopicSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon:Icon(
              Icons.arrow_back_ios,
              color: Colors.red,
              //alignment:Alignment.bottomLeft
            ),
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute (builder: (context)=>HomeScreen()
              ));
            },
          )
        ],
        title: Text('Learn here!',style: TextStyle(color: Colors.red,fontSize: 40),),
        centerTitle: true,
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        elevation: 3,
      ),
      body: Container(
        alignment: Alignment.center,
        margin:EdgeInsets.all(24),
        child: Column(children: [
          SizedBox(height:30),
          GestureDetector(
            child: GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute (builder: (context)=>Spacecrafts()));
              },

              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: 75,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12)),
                child: Text("Spacecrafts",
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(height:40),
          GestureDetector(
            child: GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute (builder: (context)=>Launchers()));
              },

              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: 75,

                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                decoration: BoxDecoration(

                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12)),
                child: Text("Launchers",
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(height:40),
          GestureDetector(
            child: GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute (builder: (context)=>CustomerSatellites()));
              },

              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: 75,

                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                decoration: BoxDecoration(

                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12)),
                child: Text("Customer Satellites",
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(height:40),
          GestureDetector(
            child: GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute (builder: (context)=>Centers()));
              },

              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: 75,

                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                decoration: BoxDecoration(

                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12)),
                child: Text("Centres",
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),



        ],),
      ),
    );
  }
}
