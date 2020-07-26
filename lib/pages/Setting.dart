import 'package:first_App/drawer/MyDrawer.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  State<StatefulWidget> createState() {
    return SettingState();
  }
}

class SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Directionality(textDirection: TextDirection.rtl, child: Scaffold(
      appBar: AppBar(
        title: Text('الأعدادات',style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 10,
      ),
      drawer: MyDrawer(),
      body: Container(

      ),
    )
    );
  }
}