import 'package:flutter/material.dart';

class VerticalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/products/hills1.jpeg',
            image_caption: 'hills',
          ),
          Category(
            image_location: 'images/products/blazer2.jpeg',
            image_caption: 'dress',
          ),
          Category(
            image_location: 'images/products/pants2.jpeg',
            image_caption: 'pants',
          ),
          Category(
            image_location: 'images/products/blazer1.jpeg',
            image_caption: 'formal',
          ),
          Category(
            image_location: 'images/products/hills2.jpeg',
            image_caption: 'formal',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 120.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 160.0,
                height: 160.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  image_caption,
                  style: new TextStyle(fontSize: 12.0),
                ),
              )),
        ),
      ),
    );
  }
}
