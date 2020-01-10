
import 'dart:convert';

import 'package:http/http.dart';

Future <void> registerUser(String phone) async {
  String baseURL="https://es-shopping.com/egypt/wp-json/digits/v1/create_user";

  Map<String,String>body={
    'digits_reg_countrycode':'+20',
    'digits_reg_mobile':phone
  };

  var client=Client();

  Response response=await client.post(baseURL,body: body);
  print(response.body);
  //var jsonResp=jsonDecode(response.body);
}


