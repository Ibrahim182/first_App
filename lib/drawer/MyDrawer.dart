import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
        child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountEmail: Text('ibrahim@gmail.com'),
                accountName: Text('Ibrahim Elsayed'),
                currentAccountPicture: CircleAvatar(
                  child: Icon(
                    Icons.person,
                    size: 40,
                  ),
                  backgroundColor: Colors.red,
                ),
                decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage('image/Quraan.jfif'),
                        fit: BoxFit.fill)),
              ),
              ListTile(
                title: Text(
                  "الصفحة الرئيسية",
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                leading: Icon(
                  Icons.home,
                  color: Colors.red,
                  size: 20,
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('home');
                },
              ),
              ListTile(
                title: Text(
                  "الأعدادات",
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                leading: Icon(
                  Icons.build,
                  color: Colors.red,
                  size: 20,
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('Seetting');
                },
              ),
              ListTile(
                title: Text(
                  "عن التطبيق",
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                leading: Icon(
                  Icons.error_outline,
                  color: Colors.red,
                  size: 20,
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text(
                  "تسجيل الخروج",
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                leading: Icon(
                  Icons.exit_to_app,
                  color: Colors.red,
                  size: 20,
                ),
                onTap: () {},
              )
            ]
        )
    );
  }
}