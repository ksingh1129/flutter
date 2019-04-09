import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {

  final Function addProdict; 

  ProductControl(this.addProdict);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    addProdict('Sweets');
                  },
                  child: Text('Add Product'),
                );
  }
}