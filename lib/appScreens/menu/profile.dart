import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: EdgeInsets.only(left: 20,right:20),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(45),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/logo.png',
                scale: 4,
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {},
                color: Colors.red[800],
                textColor: Colors.white,
                child: Text('الدخول او مستخدم جديد'),
              ),
              SizedBox(
                height: 10,
              ),
              Text('تم تسجيل الدخول باسم 01093138717')
            ],
          ),
        ),
      ),
    );
  }
}
