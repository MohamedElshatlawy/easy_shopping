import 'package:easy_shopping/appScreens/ads.dart';
import 'package:easy_shopping/appScreens/menu/addAds.dart';
import 'package:flutter/material.dart';

class SubCategory extends StatefulWidget {
  @override
  _SubCategoryState createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {
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
            Center(child: Text('عقارات للأيجار',style: TextStyle(fontSize: 16),),),

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
                     builder: (context)=>Ads()
                   ));
                 },
                  title: Text('كل الاعلانات في عقارات للأيجار',style: TextStyle(color: Colors.red[800],
                  fontWeight: FontWeight.bold
                  ),),
                  subtitle: Text('230 اعلان'),
                  
                ),
                Divider(
                  indent: 15,
                  endIndent: 15,
                  height: 1,
                ),
                ListTile(
                 
                  title: Text('شقة للأيجار'),
                  subtitle: Text('230 اعلان'),
                  
                ),
                Divider(
                  indent: 15,
                  endIndent: 15,
                  height: 1,
                ),
              
               ListTile(
                 
                  title: Text('شاليهات للأيجار'),
                  subtitle: Text('230 اعلان'),
                  
                ),
                Divider(
                  indent: 15,
                  endIndent: 15,
                  height: 1,
                ),
               ListTile(
                 
                  title: Text('ابنية للأيجار'),
                  subtitle: Text('230 اعلان'),
                  
                ),
                Divider(
                  indent: 15,
                  endIndent: 15,
                  height: 1,
                ),
               ListTile(
                 
                  title: Text('عقد تجاري للأيجار'),
                  subtitle: Text('230 اعلان'),
                  
                ),
                Divider(
                  indent: 15,
                  endIndent: 15,
                  height: 1,
                ),
              
              ],
            ),
         ],
        ),
      ),
    );
  }

}