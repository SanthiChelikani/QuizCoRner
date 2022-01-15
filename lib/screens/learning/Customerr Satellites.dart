import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isro_quiz/controllers/learningdata.dart';
import 'package:isro_quiz/screens/learning/topicselection.dart';
class CustomerSatellites extends StatelessWidget {
  CustomerSatellites({Key? key}) : super(key: key);
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

          title: Text("Customer Satellites",
            style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          elevation: 10.0,
        ),
        body: Obx(() =>ListView.separated(
          padding: const EdgeInsets.all(8),

          itemCount: data.customerSatellites_list.value.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              height: 180,
              color: Colors.red,
              child: Column(
                  children: [
                    Text("id: "

                      "${data.customerSatellites_list.value[index].id}",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),

                    Text(
                      "Country: "
                        "${data.customerSatellites_list.value[index].country}",
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),


                    SizedBox(height: 10),
                    Text(
                      "Launch date: "
                        "${data.customerSatellites_list.value[index].launchdate}",
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),

                    Text(
                      "Mass: "
                        "${data.customerSatellites_list.value[index].mass}",
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),


                    Expanded(
                      child: Text(
                        "Launchers: "
                        "${data.customerSatellites_list.value[index].launcher}",
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
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
