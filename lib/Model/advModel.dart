import 'package:flutter/foundation.dart';

class AdvModel{
  
  int id;
  List<String>gallery=[];
  String title;
  String description;
  String date;
  String price;
 

  AdvModel(
    {
      @required this.date,@required this.description,@required this.gallery,
      @required this.id,@required this.price,@required this.title
    }
  );

  AdvModel.fromMap(Map<String,dynamic>json){
    this.id=json['id'];
    this.price=json['acf']['advertise_kinds']['price'];
    this.title=json['title']['rendered'];

    List imgs= json['acf']['gallery'];
    imgs.forEach((img){
      this.gallery.add(img['url']);
    });

    this.description=json['content']['rendered'];
    this.date=json['date'];

  }

}