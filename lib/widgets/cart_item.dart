import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:instant_eats_foodapp/models/cart.dart';


class CartPdt extends StatelessWidget {
  final String id;
  final String productId;
  final double price;
  final int quantity;
  final String name;

  CartPdt({this.id,this.productId,this.price,this.quantity,this.name});
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      direction: DismissDirection.endToStart,
      background: Container(
        color: Colors.blue,
      ),
      onDismissed: (direction){
        Provider.of<Cart>(context,listen: false).removeItem(productId);
      },

      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            child: FittedBox(
              child: Text('Rs.$price') ,
            ),
          ),
          title: Text(name),
          subtitle: Text('Total: Rs.${(price*quantity)}'),
          trailing: Text('$quantity x'),
        ),
      ),
    );
  }
}
