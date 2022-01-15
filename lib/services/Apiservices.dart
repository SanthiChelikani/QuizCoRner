import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:isro_quiz/datafromApi/Centers.dart';
import 'package:isro_quiz/datafromApi/CustomerSatellites.dart';
import 'package:isro_quiz/datafromApi/Launchers.dart';
import 'package:isro_quiz/datafromApi/Spacecrafts.dart';
class ApiService{
  var client=http.Client();

  Future<List<Spacecrafts>?> get_spacecrafts() async {
    var response = await client.get(Uri.parse("https://isro.vercel.app/api/spacecrafts"));
    if (response.statusCode == 200) {
      var jsonStr = response.body;
      Map<String, dynamic> map = json.decode(jsonStr);
      List<dynamic> value = map["spacecrafts"];
      List<Spacecrafts> SpaceCraftlist = value.map((i) {
        Spacecrafts varis = Spacecrafts(
            id: i["id"],
            name: i["name"]
        );

        return varis;

      }).toList();
      return SpaceCraftlist;
    } else {
      //show error message
      return null;
    }
  }
  Future<List<Launcher>?> get_launchers() async {
    var response = await client.get(Uri.parse("https://isro.vercel.app/api/launchers"));
    if (response.statusCode == 200) {
      var jsonStr = response.body;
      Map<String, dynamic> map = json.decode(jsonStr);
      List<dynamic> value = map["launchers"];
      List<Launcher> Launcherslist = value.map((i) {
        Launcher varil = Launcher(
            id: i["id"]
        );

        return varil;

      }).toList();
      return Launcherslist;
    } else {
      return null;
    }
  }
  Future<List<CustomerSatellite>?> get_customer_satellites() async {
    var response = await client.get(Uri.parse("https://isro.vercel.app/api/customer_satellites"));
    if (response.statusCode == 200) {
      var jsonStr = response.body;
      Map<String, dynamic> map = json.decode(jsonStr);
      List<dynamic> value = map["customer_satellites"];
      List<CustomerSatellite> CustomerSatelliteslist = value.map((i) {
        CustomerSatellite varc = CustomerSatellite(
            id: i["id"].toString(),
            country: i["country"].toString(),
            launchdate: i["launch_date"].toString(),
            launcher: i["launcher"].toString(),
            mass: i["mass"].toString());
        return varc;

      }).toList();
      return CustomerSatelliteslist;
    } else {
      return null;
    }
  }

  Future<List<Centres>?> get_centers() async {
    var response = await client.get(Uri.parse("https://isro.vercel.app/api/centres"));
    if (response.statusCode == 200) {
      var jsonStr = response.body;
      Map<String, dynamic> map = json.decode(jsonStr);
      List<dynamic> value = map["centres"];
      List<Centres> Centrelist = value.map((i) {
        Centres varce = Centres(
            id: i["id"],
            name: i["name"],
            Place: i["Place"],
            State: i["State"]
        );

        return varce;

      }).toList();
      return Centrelist;
    } else {

      return null;
    }
  }





}