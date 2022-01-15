import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:isro_quiz/controllers/learningdata.dart';
import 'package:isro_quiz/screens/learning/topicselection.dart';


class Spacecrafts extends StatelessWidget {
  Spacecrafts({Key? key}) : super(key: key);
  final Learningdata data = Get.put(Learningdata());
  //final Learningdata Learningdata = Get.find();
  //"${data.spacecraft_list.value[index].id}"
  //"${data.spacecraft_list.value[index].name}"

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

          title: Text("Spacecrafts",
            style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          elevation: 10.0,
        ),
        body: Obx(() =>ListView.separated(
          padding: const EdgeInsets.all(8),

          itemCount: data.spacecraft_list.value.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              height: 60,
              color: Colors.red,
              child: Row(
                  children: [
                Text(
                    "${data.spacecraft_list.value[index].id}",
                  style: TextStyle(fontSize: 20),
                ),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  "${data.spacecraft_list.value[index].name}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ]),


            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(),
        )

        )
    );

  }
}

