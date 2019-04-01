import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {

  final String startingProduct;
  ProductManager(this.startingProduct) {
    print('[ProductsManager State] contructor()');
  }

  @override
  State<StatefulWidget> createState() {
    print('[ProductsManager State] createState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {

  List<String> _products = [];

  @override
  void initState() {
    print('[ProductsManager State] initState()');
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    // TODO: implement didUpdateWidget
    print('[ProductsManager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('[ProductsManager State] build()');
    return Column(children: [Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    setState(() {
                      _products.add('Advanced food tester');
                      print(_products);
                    });
                  },
                  child: Text('Add Product'),
                ),
              ),
              Products(_products)
              ]); 
  }
}