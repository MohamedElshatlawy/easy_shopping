import 'package:easy_shopping/appScreens/menu/conversation.dart';
import 'package:flutter/material.dart';

class ChatTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=>Conversation()
              ));
            },
                      child: Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('عصام علي',style: TextStyle(fontWeight: FontWeight.bold),),
                      Row(
                        children: <Widget>[
                          Icon(Icons.access_time),
                          SizedBox(width: 5,),
                          Text('اكتوبر 18')
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'السلام عليكم ممكن تفاوض بشان سعر العقار المعروض للبيع في شارع الحي البلوري',
                    style: TextStyle(height: 1.5),
                  ),
                  SizedBox(height: 5,),
                  Divider(height: 25,),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
