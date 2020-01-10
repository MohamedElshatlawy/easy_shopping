import 'package:easy_shopping/appScreens/menu/addAds.dart';
import 'package:easy_shopping/appScreens/subCategory.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
   List<String> countries = ['مصر', 'الاردن', 'البحرين', 'الكويت'];
  String dropdownValue = 'مصر';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          floatingActionButton: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 28),
            child: FloatingActionButton(
              tooltip: 'اضافة اعلان',
              backgroundColor: Colors.red[800],
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(
                  builder: (context)=>AddAds()
                ));
              },
              child: Icon(Icons.add,color: Colors.white,),
            ),
          ),
        ],
      ),
  
       appBar: AppBar(
          leading: Container(),
          backgroundColor: Colors.red[800],
          actions: <Widget>[
            Center(child: Text('عقارات',style: TextStyle(fontSize: 16),),),

            SizedBox(width: 10,),
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_forward_ios,))
           , SizedBox(width: 10,)
          ],
        ),
       body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                ListTile(
                 onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(
                     builder: (context)=>SubCategory()
                   ));
                 },
                  title: Text('عقارات للأيجار'),
                  subtitle: Text('230 اعلان'),
                   trailing: Image.asset(
                    'assets/left_arrow.png',
                    scale: 3,
                  ),
                ),
                Divider(
                  indent: 15,
                  endIndent: 15,
                  height: 1,
                ),
                ListTile(
                 
                  title: Text('عقارات للبيع'),
                  subtitle: Text('230 اعلان'),
                  trailing: Image.asset(
                    'assets/left_arrow.png',
                    scale: 3,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


}
