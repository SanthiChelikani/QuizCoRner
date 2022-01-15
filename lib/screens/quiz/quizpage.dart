import 'package:flutter/material.dart';
import 'package:isro_quiz/screens/quiz/quizquestionpage.dart';


import '../homescreen.dart';
class Quizpage extends StatefulWidget {
  const Quizpage({Key? key}) : super(key: key);

  @override
  _QuizpageState createState() => _QuizpageState();
}

class _QuizpageState extends State<Quizpage> {
  String level = "Easy";
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
        title: Text('Quiz Time!',style: TextStyle(color: Colors.red,fontSize: 40),),
        centerTitle: true,
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        elevation: 3,
      ),
      body: Container(
        alignment: Alignment.center,
        margin:EdgeInsets.all(24),
        child:Column(

          children: [
          SizedBox(height:30),
          Text("Select the dificulty level and subject",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18)),
          SizedBox(height:35),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: level == "Easy"
                        ? ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.red)
                            )
                        )

                    )
                        : ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white),
                    ),
                    onPressed: () {
                      setState(() {
                        level = "Easy";
                      });
                    },
                    child: Text("Easy",style: TextStyle(color: Colors.black))),
                ElevatedButton(
                    style: level == "Medium"
                        ? ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.red)
                            )
                        )
                    )
                        : ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white),
                    ),
                    onPressed: () {
                      setState(() {
                        level = "Medium";
                      });
                    },
                    child: Text("Medium",style: TextStyle(color: Colors.black))),
                ElevatedButton(
                    style: level == "Hard"
                        ? ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.red)
                            )
                        )
                    )
                        : ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white),
                    ),
                    onPressed: () {
                      setState(() {
                        level = "Hard";
                      });
                    },
                    child: Text("Hard",style: TextStyle(color: Colors.black))),
              ],
            ),
            SizedBox(height:35),
          GestureDetector(
            child: GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute (builder: (context)=>quizquestionpage(
                  sub: "Subject 1",
                  level:level,
                )));
              },

              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: 75,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12)),
                child: Text("Subject 1",
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(height:40),
          GestureDetector(
            child: GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute (builder: (context)=>quizquestionpage(
                  sub: "Subject 2",
                  level:level,
                )));
              },

              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: 75,

                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                decoration: BoxDecoration(

                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12)),
                child: Text("Subject 2",
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(height:40),
          GestureDetector(
            child: GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute (builder: (context)=>quizquestionpage(
                  sub: "Subject 3",
                  level:level,
                )));
              },

              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: 75,

                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                decoration: BoxDecoration(

                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12)),
                child: Text("Subject 3",
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
              SizedBox(height:20),

        ],)
      ),
    );
  }
}
