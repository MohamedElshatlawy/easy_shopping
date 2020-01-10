
import 'package:flutter/material.dart';

class Conversation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.red[800],
        actions: <Widget>[
          Center(
            child: Text(
              'محادثة',
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
            child: Column(
              children: <Widget>[
                Expanded(
                flex: 10,
                child: Container(
                  color: Colors.grey[300],
                  child: ListView.builder(
                    padding: EdgeInsets.all(10),
                    itemCount: 5,
                    itemBuilder: (context,index){

                      return Row(
                        textDirection: (index%2==0)?TextDirection.rtl:
                        TextDirection.ltr
                        ,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)
                             , color: (index%2==0)?Colors.white:
                             Color.fromRGBO(255, 0,0, .3)
                             ,
                            ),
                            
                            padding: EdgeInsets.all(15),
                            child: Text('السلام عليكم ورحمة الله'))
                        ],
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 4,
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            border: InputBorder.none,
                            hintText: 'اكتب رسالتك'
                          ),
                        ),
                      )
                   
                      ,Expanded(
                        flex: 1,
                        child: Container(
                          height: double.infinity,
                          color: Colors.red[800],
                          child: Icon(Icons.send,color: Colors.white,
                          
                          ),
                        ),
                      )
                    ],
                  ),
               ) ),
              
              ],
            ),
          ),
    );
  }
}