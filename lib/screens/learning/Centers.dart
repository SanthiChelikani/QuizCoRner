import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isro_quiz/controllers/learningdata.dart';
import 'package:isro_quiz/screens/learning/topicselection.dart';
class Centers extends StatelessWidget {
  Centers({Key? key}) : super(key: key);
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

          title: const Text("Centres",
            style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          elevation: 10.0,
        ),
        body: Obx(() =>ListView.separated(

          padding: const EdgeInsets.all(8),

          itemCount: data.center_list.value.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              height: 200,
              color: Colors.red,
              child: Column(
                  children: [
                    Text("id: "

                        "${data.center_list.value[index].id}",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),

                    Text(
                      "Name: "
                          "${data.center_list.value[index].name}",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),


                    SizedBox(height: 10),
                    Text(
                      "Place: "
                          "${data.center_list.value[index].Place}",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),

                    Text(
                      "State: "
                          "${data.center_list.value[index].State}",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
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

