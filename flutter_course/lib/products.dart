import 'package:flutter/material.dart';

import './pages/product.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products) {
    print('[Products State] contructor()');
  }

  @override
  Widget build(BuildContext context) {
    print('[Products State] build()');
    return Column(
      children: products
          .map((element) => Card(
                  child: Column(
                children: <Widget>[
                  Image.asset('assets/food.jpg'),
                  Text(element),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        child: Text('Details'),
                        onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    ProductPage(),
                              ),
                            ),
                      )
                    ],
                  )
                ],
              )))
          .toList(),
    );
  }
}
