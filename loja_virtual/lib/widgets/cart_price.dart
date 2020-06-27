import 'package:br/models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class CartPrice extends StatelessWidget {
  final VoidCallback buy;

  CartPrice(this.buy);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Container(
          padding: EdgeInsets.all(16),
          child: ScopedModelDescendant<CartModel>(
              builder: (context, child, model) {
            double price = model.getProductsPrice();
            double discount = model.getDiscount();

            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Resumo do Pedido',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[Text('Subtotal'), Text('R\$ ${price.toStringAsFixed(2)}')],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[Text('Desconto'), Text('R\$ ${discount.toStringAsFixed(2)}')],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Total',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    Text(
                      'R\$ ${(price - discount).toStringAsFixed(2)}',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor, fontSize: 18),
                    )
                  ],
                ),
                Divider(),
                Container(
                  height: 45,
                  child: RaisedButton(
                    child: Text(
                      'Finalizar Pedido',
                      style: TextStyle(fontSize: 18),
                    ),
                    textColor: Colors.white,
                    color: Theme.of(context).primaryColor,
                    onPressed: buy,
                  ),
                )
              ],
            );
          }),
        ));
  }
}
