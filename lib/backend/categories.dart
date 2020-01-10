import 'dart:convert';

import 'package:easy_shopping/Model/advModel.dart';
import 'package:easy_shopping/Model/categoryModel.dart';

import 'package:easy_shopping/backend/authorization.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class CategoryProvider extends ChangeNotifier {
  List<CategoryModel> mainCats = [];
  List<AdvModel> catDetails = [];

  
  Future<List<CategoryModel>> getMainCategories() async {
    String _baseURL =
        "https://es-shopping.com/egypt/wp-json/wp/v2/advertise-category?parent=0";

    Client client = new Client();

    Response response = await client.get(_baseURL, headers: Auth.token);

    List listResp = jsonDecode(response.body);

    listResp.forEach((cat) {
      mainCats.add(CategoryModel.fromMap(cat));
      
    });
    notifyListeners();
    client.close();
    return mainCats;
  }

  Future<List<AdvModel>> getDetailedCategory(int id) async {
    String _baseURL =
        "https://es-shopping.com/egypt/wp-json/wp/v2/advertise?advertise-category=${id.toString()}";
    Client client = new Client();
    Response response = await client.get(_baseURL, headers: Auth.token);

    List listResp = jsonDecode(response.body);

    listResp.forEach((ad) {
      catDetails.add(AdvModel.fromMap(ad));
    });

    client.close();
    print('Size:${catDetails.length}');
    return catDetails;
  }
}
