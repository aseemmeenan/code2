import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "dress2",
      "picture": "images/products/dress2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "skirt1",
      "picture": "images/products/skt1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "skirt2",
      "picture": "images/products/skt2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "hills",
      "picture": "images/products/hills1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "hills2",
      "picture": "images/products/hills2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "blazer2",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "dress2",
      "picture": "images/products/dress2.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "pant",
      "picture": "images/products/pants2.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "dress2",
      "picture": "images/products/dress2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "skirt1",
      "picture": "images/products/skt1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "skirt2",
      "picture": "images/products/skt2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "hills",
      "picture": "images/products/hills1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "hills2",
      "picture": "images/products/hills2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "blazer2",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "dress2",
      "picture": "images/products/dress2.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "pant",
      "picture": "images/products/pants2.jpeg",
      "old_price": 120,
      "price": 85,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_pricture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_pricture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        child: Hero(
            tag: prod_name,
            child: Material(
              child: InkWell(
                onTap: () {},
                child: GridTile(
                    footer: Container(
                      color: Colors.white70,
                      child: ListTile(
                        leading: Text(
                          prod_name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        title: Text(
                          "\$$prod_price",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.w800),
                        ),
                        subtitle: Text(
                          "\$$prod_old_price",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w800,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                    ),
                    child: Image.asset(
                      prod_pricture,
                      fit: BoxFit.cover,
                    )),
              ),
            )),
      ),
    );
  }
}
