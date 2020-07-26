import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import '../drawer/MyDrawer.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("وَبَشِّرِ الصَّابِرِينَ",style: TextStyle(fontWeight: FontWeight.bold),),
          backgroundColor: Colors.red,
          centerTitle: true,
          elevation: 10,
        ),
        drawer: MyDrawer(),
        // End Drawer
        body: ListView(
          // we didn't use Column cause no scroll
          children: <Widget>[
            SizedBox(
              // I could write Container instead of SizeBox
              height: 300.0,
              width: double.infinity,
              child: Carousel(
                images: [
                  AssetImage('image/ast2.jfif'),
                  AssetImage('image/ast1.jfif'),
                  AssetImage('image/ast3.jfif'),
                ],
                dotSize: 4.5,
                dotColor: Colors.redAccent,
                dotBgColor: Colors.pink.withOpacity(0.1),
                indicatorBgPadding: 25,
                dotSpacing: 25.0,
                boxFit: BoxFit.fill,
                overlayShadow: true,
                autoplay: true,
              ),
            ),
            // Start Category
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                'الأقسام',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 620,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: <Widget>[
                  InkWell(child :GridTile(
                    child: Image.asset('image/azkar.png'),
                    footer: Container(
                      height: 35,
                      color: Colors.red,
                      child: Text(
                        'الأذكار',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ), onTap: () {},),
                  InkWell(child: GridTile(
                    child: Image.asset('image/daa1.jpg'),
                    footer: Container(
                      height: 35,
                      color: Colors.red,
                      child: Text(
                        'أدعية',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ), onTap: () {},),
                  InkWell(child: GridTile(
                    child: Image.asset('image/astgfar.png'),
                    footer: Container(
                      height: 35,
                      color: Colors.red,
                      child: Text(
                        'أستغفارات',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),onTap: () {},),
                  InkWell(child: GridTile(
                    child: Image.asset('image/mreed.png'),
                    footer: Container(
                      height: 35,
                      color: Colors.red,
                      child: Text(
                        'أيات قرأنية',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),onTap: () {},),
                  InkWell(child: GridTile(
                    child: Image.asset('image/hkam.png'),
                    footer: Container(
                      height: 35,
                      color: Colors.red,
                      child: Text(
                        'حكم',
                        style: TextStyle(fontSize: 25, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),onTap: () {},),
                ],
              ),
            )
            // End Category
          ],
        ),
        // End Carousel
      ),
    );
  }
}


