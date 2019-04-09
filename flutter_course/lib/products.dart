import 'package:flutter/material.dart';

import './pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;

  Products(this.products, {this.deleteProduct}) {
    print('[Products State] contructor()');
  }

  Widget _buildProductionItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.pushNamed<bool>(context, '/product/' + index.toString()).then((bool value) {
                      if (value) {
                        deleteProduct(index);
                      }
                    }),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductList() {
    Widget productCard = Center(
      child: Text('No product found, please add some.'),
    );

    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductionItem,
        itemCount: products.length,
      );
    }
    /*
    productCard = Container();
    */

    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    print('[Products State] build()');
    return _buildProductList();

    /*return products.length > 0
        ? ListView.builder(
            itemBuilder: _buildProductionItem,
            itemCount: products.length,
          )
        : Center(
            child: Text('No product found, please add some.'),
          );*/
  }
}
