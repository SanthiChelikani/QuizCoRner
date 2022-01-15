import 'package:get/state_manager.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:isro_quiz/datafromApi/Centers.dart';
import 'package:isro_quiz/datafromApi/CustomerSatellites.dart';
import 'package:isro_quiz/datafromApi/Launchers.dart';

import 'package:isro_quiz/datafromApi/Spacecrafts.dart';
import 'package:isro_quiz/services/Apiservices.dart';

class Learningdata extends GetxController {

  var spacecraft_list = <Spacecrafts>[].obs;
  var launchers_list = <Launcher>[].obs;
  var customerSatellites_list = <CustomerSatellite>[].obs;
  var center_list = <Centres>[].obs;

  var apiService = ApiService();

  void onInit() {

    get_spacecrafts();
    get_launchers();
    get_customer_satellites();
    get_centers();

    super.onInit();
  }
  void get_spacecrafts() async {
    try {
      var SpaceCrafts = await apiService.get_spacecrafts();
      if (SpaceCrafts != null) {
        spacecraft_list.value = SpaceCrafts as List<Spacecrafts>;
      }
    } finally {}
  }

  void get_launchers() async {
    try {
      var Launchers = await apiService.get_launchers();
      if (Launchers != null) {
        launchers_list.value = Launchers as List<Launcher>;
      }
    } finally {}
  }


  void get_customer_satellites() async {
    try {
      var CustomerSatellites =
      await apiService.get_customer_satellites();
      if (CustomerSatellites != null) {
        customerSatellites_list.value =
        CustomerSatellites as List<CustomerSatellite>;
      }
    } finally {}
  }

  void get_centers() async {
    try {
      var centers = await apiService.get_centers();
      if (centers != null) {
        center_list.value = centers as List<Centres>;
      }
    } finally {}
  }




}
