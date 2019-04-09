import 'package:flutter/material.dart';

import './pages/product.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products) {
    print('[Products State] contructor()');
  }

  Widget _buildProductionItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text(products[index])
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
