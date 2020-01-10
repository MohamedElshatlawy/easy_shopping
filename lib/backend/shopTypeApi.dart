import 'dart:convert';

import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> getShopTypeURL(String userSelection) async {
  String apiLink = "";

  String baseURL = "https://es-shopping.com/wp-json/wp/v2/es/sites";

  var client = Client();

  Response response = await client.get(baseURL);

  List jsonResp = jsonDecode(response.body);

  jsonResp.forEach((item) {
    if (userSelection == item['name']) {
      apiLink = item['api'];
    }
  });
  print(apiLink);
  //SaveAPI-BaseURL to sharedprefrences
  await saveApiBaseURLSharedPref(apiLink);
  client.close();
}

Future<void> saveApiBaseURLSharedPref(String api) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('api', api);
}

Future<String> getApiBaseURLSharedPref()async{
  SharedPreferences prefs = await SharedPreferences.getInstance();

  return prefs.getString('api');
}