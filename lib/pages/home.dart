import 'package:aseem/componets/stories.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import '/componets/horizontal_category.dart';
import 'package:aseem/componets/vertical_product.dart';
import '/componets/products.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/w3.jpeg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/c1.jpg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('images/m2.jpg'),
        ],
        autoplay: false,
//      animationCurve: Curves.fastOutSlowIn,
//      animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.white,
        title: Text(
          'UDrive',
          style: TextStyle(
            fontSize: 26,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.headphones,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
              "images/banner.jpg",
              fit: BoxFit.cover,
            ),
            //image carousel begins here
            //          image_carousel,

            //padding widget
            new Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: new Text('Categories')),
            ),

            //Horizontal list view begins here
            HorizontalList(),

            //padding widget
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "#FOR U",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),

            //grid view
            Flexible(child: Products()),
            SizedBox(height: 30.0),
            Container(
              height: 150.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  storyButton(
                      "https://fragmentsofafrica.co.za/wp-content/uploads/2020/07/Sarah-Pryke-Nelson-Mandela.jpg",
                      "@nelson"),
                  storyButton(
                      "https://images.artbrokerage.com/artthumb/kreloff_47315_12/360x322/Martin_Kreloff_Errol_Flynn_1980_40x40_Huge.jpg",
                      "@desmond"),
                  storyButton(
                      "https://i.pinimg.com/236x/ed/4d/13/ed4d13abaf61c90ac2d97dbc34399216--david-beckham.jpg",
                      "@bechkam"),
                  storyButton(
                      "https://www.overduerecognition.com/uploads/3/9/8/5/39852477/img-0584_orig.jpg",
                      "@alfrin"),
                  storyButton(
                      "https://visafoto.com/img/docs/zz_4x4_cm.jpg", "@sreya"),
                  storyButton(
                      "https://payload.cargocollective.com/1/15/489301/12438965/medusa_1340_c.jpg",
                      "@sruthi"),
                ],
              ),
            ),
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "#SHOP BY CATEGORY",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "    Sub Category",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    "Sub Category    ",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            VerticalList(),
            SizedBox(height: 40.0),
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "TERMS OF USE",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    "CONTACT",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    "CAREER",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    "AREA RANGE",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "UDRIVE",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    "PROJECT BY EZENESS TECHNOLOGY",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "UP",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
