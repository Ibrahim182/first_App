import 'package:flutter/material.dart';
import './pages/Home.dart';
import './pages/Setting.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // Start
        title: "Ibrahim",
        home: Home(),
        routes: {
          'Seetting' : (context) {
            return Setting();
          },
          'home' : (context) {
            return Home();
          }
        },
        // End
        );
  }
}
