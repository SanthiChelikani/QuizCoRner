import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isro_quiz/controllers/Quizresult.dart';
import 'package:isro_quiz/controllers/questiondata.dart';
import 'package:isro_quiz/datafromApi/Questions/Question.dart';
import 'package:isro_quiz/screens/quiz/quizpage.dart';
class quizquestionpage extends StatefulWidget {
  String? level;
  String? sub;
  quizquestionpage({Key? key, required String? this.sub, required String? this.level}) : super(key: key);

  @override
  _quizquestionpageState createState() => _quizquestionpageState();
}

class _quizquestionpageState extends State<quizquestionpage> {
  @override
  int ptr = 0;
  final Questiondata data = Get.put(Questiondata());
  //Questiondata data = Get.find();

  Quizresult result = Get.put(Quizresult());
  Widget build(BuildContext context) {

    List<Question> questionsList = data.questionList
        .where((element) => (element.level == widget.level &&
        element.sub == widget.sub))
        .toList();

    print("Index is at question no.: ${ptr}");
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
              Navigator.pushReplacement(context, MaterialPageRoute (builder: (context)=>Quizpage()
              ));
            },
          )
        ],
        title: Text('Quiz Zone!',style: TextStyle(color: Colors.red,fontSize: 40),),
        centerTitle: true,
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(

        child: ptr >= 10
            ?
        Container(

          child: Column(
            children: [
               SizedBox(height:40),
              Text("You Got ${result.point} out of ${result.totalscore} ", style: TextStyle(
                  fontSize: 32
              ),),
              SizedBox(height:50),
              ElevatedButton(onPressed: (){
                Get.delete<Quizresult>();
                Navigator.pushReplacement(context, MaterialPageRoute (builder: (context)=>Quizpage()));

              },
                  child: Text("Take Again") ,
              style: ElevatedButton.styleFrom(primary: Colors.red),

              )],
              ),
        ): Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${questionsList[ptr].question}",
              style: TextStyle(fontSize: 32),
            ),
            ElevatedButton(
                onPressed: () {
                  result
                      .updateMarks(questionsList[ptr].option_1);
                  setState(() {

                    ptr++;

                  });
                },
                child: Text("Option 1"),
              style: ElevatedButton.styleFrom(primary: Colors.red)),

            ElevatedButton(
                onPressed: () {
                  result
                      .updateMarks(questionsList[ptr].option_2);
                  setState(() {

                    ptr++;

                  });
                },
                child: Text("Option 2"),
              style: ElevatedButton.styleFrom(primary: Colors.red)

            ),
            ElevatedButton(
                onPressed: () {
                  result
                      .updateMarks(questionsList[ptr].option_3);
                  setState(() {

                    ptr++;

                  });
                },
                child: Text("Option 3"),
              style: ElevatedButton.styleFrom(primary: Colors.red)),
            ElevatedButton(
                onPressed: () {

                  result
                      .updateMarks(questionsList[ptr].option_4);
                  setState(() {

                    ptr++;

                  });
                },
                child: Text("Option 4"),
                style: ElevatedButton.styleFrom(primary: Colors.red)),

          ],
        ),
      ),
    );
  }
}
