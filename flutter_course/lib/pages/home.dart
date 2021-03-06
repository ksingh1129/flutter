import 'package:flutter/material.dart';

import '../products_manager.dart';
import './product_admin.dart';

class HomePage extends StatelessWidget {

  final List<Map<String, String>> products;
  final Function addProduct;
  final Function deleteProduct;

  HomePage(this.products, this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Manage Products'),
              onTap: () {
                Navigator.pushReplacementNamed(
                  context,
                  '/admin'
                );
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      body: ProductManager(products, addProduct, deleteProduct),
    );
  }
}
