import 'package:br/datas/cart_product.dart';
import 'package:flutter/material.dart';

class CartTile extends StatelessWidget {

  final CartProduct cartProduct;

  CartTile(this.cartProduct);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
    );
  }
}
