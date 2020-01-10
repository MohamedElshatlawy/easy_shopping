import 'package:easy_shopping/Model/categoryModel.dart';
import 'package:flutter/material.dart';

class AllCats extends StatelessWidget {
  List<CategoryModel> myList = [];
  AllCats(this.myList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: myList.length,
      itemBuilder: (BuildContext context, int index) {
        ListTile(
          leading: Image.network(
            myList[index].imgURLIcon,
            scale: 3,
            color: Colors.red[800],
            
          ),
          title: Text(myList[index].name),
          trailing: Icon(Icons.arrow_back),
        );
      },
    );
  }
}
