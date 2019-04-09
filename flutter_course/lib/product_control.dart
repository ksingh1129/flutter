import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProdict;

  ProductControl(this.addProdict);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        addProdict(
          {'title': 'Chocolate', 'image': 'assets/food.jpg'},
        );
      },
      child: Text('Add Product'),
    );
  }
}
