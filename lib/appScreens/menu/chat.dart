import 'package:flutter/material.dart';

import 'chatTab.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.red[800],
          child: TabBar(
            controller: tabController,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            tabs: <Widget>[
              Tab(
                text: 'رسائل',
              ),
              Tab(
                text: 'الارشيف',
              )
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: <Widget>[
              Container(padding: EdgeInsets.only(top: 10), child: ChatTab()),
              //   ArchieveTab()
              Container()
            ],
          ),
        )
      ],
    );
  }
}
