import 'package:flutter/material.dart';

class FavoutiteAds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Center(child: Text('حذف')),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              'هل تريد حذف كل الاعلانات المفضلة ؟',
                              textAlign: TextAlign.center,
                              style: TextStyle(height: 1.5),
                            ),
                            Divider(),
                            Row(
                             
                              children: <Widget>[
                               Text('لا',style: TextStyle(color: Colors.red[800]),),
                               SizedBox(width: 30,),
                               
                               Text('نعم',style: TextStyle(color: Colors.red[800]))
                              ],
                            )
                          ],
                        ),
                      ));
            },
            child: Icon(Icons.delete)),
        backgroundColor: Colors.red[800],
        actions: <Widget>[
          Center(
            child: Text(
              'الاعلانات المفضلة',
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_forward_ios)),
          SizedBox(
            width: 10,
          )
        ],
      ),

      body: Directionality(
        textDirection: TextDirection.rtl,
              child: ListView.builder(
                padding: EdgeInsets.only(top: 15),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return InkWell(
                       
                        child: Card(
                          margin:
                              EdgeInsets.only(left: 10, right: 10, bottom: 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 10,
                          child: Container(
                              width: double.infinity,
                              height: 170,
                              child: Stack(
                                fit: StackFit.expand,
                                children: <Widget>[
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Expanded(
                                          flex: 3,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(8),
                                                bottomRight: Radius.circular(8)),
                                            child: Image.asset(
                                              'assets/t1.jpg',
                                              fit: BoxFit.cover,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .height,
                                            ),
                                          )),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Expanded(
                                          flex: 4,
                                          child: Container(
                                            padding: EdgeInsets.only(top: 8),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  '250,000',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                                SizedBox(
                                                  height: 3,
                                                ),
                                                Flexible(
                                                  child: Text(
                                                    'شقة للبيع مساحة 125 م بتسهيلات في السداد تصل الى 10 سنوات',
                                                    style: TextStyle(height: 1.4),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 3,
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    Icon(Icons.location_on),
                                                    SizedBox(
                                                      width: 3,
                                                    ),
                                                    Text('nextPoint compound')
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 3,
                                                ),
                                                Row(
                                                  children: <Widget>[
                                                    Icon(Icons.access_time),
                                                    SizedBox(
                                                      width: 3,
                                                    ),
                                                    Text(
                                                      'اكتوبر 18',
                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ))
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      margin: EdgeInsets.only(right: 8, top: 8),
                                      child: CircleAvatar(
                                        backgroundColor:  Colors.red[800],
                                        child: Image.asset(
                                          'assets/favorite.png',
                                          scale: 3,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      margin: EdgeInsets.only(left: 8, top: 8),
                                      padding: EdgeInsets.fromLTRB(16, 3, 16, 3),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color: Colors.red[800]),
                                      child: Text('مميز',
                                          style: TextStyle(color: Colors.white)),
                                    ),
                                  )
                                ],
                              )),
                        ),
                      );
                    },
                  ),
      ),
             
             
    );
  }
}
