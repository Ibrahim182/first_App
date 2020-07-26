import 'package:flutter/material.dart';
import '../drawer/MyDrawer.dart';

class Azkar extends StatefulWidget {
  State<StatefulWidget> createState() {
    return AzkarState();
  }
}

class AzkarState extends State<Azkar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الأذكار'),
      ),
      drawer: MyDrawer(),
      body: Container(

      ),
    );
  }
}
