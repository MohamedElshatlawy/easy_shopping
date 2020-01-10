import 'package:flutter/material.dart';

class MyAds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
            padding: EdgeInsets.only(top: 20),
            itemCount: 2,
            itemBuilder: (context, index) {
              return Card(
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 10,
                child: Container(
                    width: double.infinity,
                    height: 190,
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
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
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
                                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                          style: TextStyle(height: 1.4,
                                          fontSize: 13
                                          ),
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
                                            style: TextStyle(color: Colors.grey),
                                          )
                                        ],
                                      ),
                                     Row(
                                       children: <Widget>[
                                         RaisedButton(
                                           shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(30)
                                           ),
                                           onPressed: (){},
                                           color: Colors.green,
                                           textColor: Colors.white,
                                           child: Row(
                                             children: <Widget>[
                                               Icon(Icons.edit),
                                               Text('تعديل')
                                             ],
                                           ),
                                         )
                                       
                                       ,SizedBox(width: 5,)
                                              , RaisedButton(
                                           shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(30)
                                           ),
                                           onPressed: (){},
                                           color: Colors.red[800],
                                           textColor: Colors.white,
                                           child: Row(
                                             children: <Widget>[
                                               Icon(Icons.delete),
                                               Text('حذف')
                                             ],
                                           ),
                                         )
                                 
                                       ],
                                     )
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
                              backgroundColor: Color.fromRGBO(128, 128, 128, .6),
                              child: Image.asset(
                                'assets/favorite.png',
                                scale: 3,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              );
            },
      
    );
  
  
  }
}
