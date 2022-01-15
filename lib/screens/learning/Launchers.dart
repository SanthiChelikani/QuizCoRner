import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isro_quiz/controllers/learningdata.dart';
import 'package:isro_quiz/screens/learning/topicselection.dart';
class Launchers extends StatelessWidget {
  Launchers({Key? key}) : super(key: key);
  final Learningdata data = Get.put(Learningdata());

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
                Navigator.pushReplacement(context, MaterialPageRoute (builder: (context)=>TopicSelection()
                ));
              },
            )
          ],
          title: Text("Launchers",
            style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          elevation: 10.0,
        ),
        body: Obx(() => ListView.builder(
          itemCount: data.spacecraft_list.value.length,
          itemBuilder: (context, index) {
            return Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                    tileColor: Colors.red,
                    title: Text(
                        "${data.launchers_list.value[index].id}")));
          },
        )));
  }
}

