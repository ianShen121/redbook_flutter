import 'package:flutter/material.dart';


class HomeListPage extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeListPageState();
  }
}


class _HomeListPageState extends State {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text("哈哈"),
          Text("哈哈"),
          Text("哈哈")
        ],
      ),
    );
  }
}