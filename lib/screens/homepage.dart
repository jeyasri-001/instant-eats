import 'package:flutter/material.dart';
import 'package:instant_eats_foodapp/screens/cart_screen.dart';
import 'package:instant_eats_foodapp/widgets/home_body.dart';




class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Instant Eats'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart,size:30 ,),onPressed: ()=>Navigator.of(context).pushNamed(CartScreen.routeName))
        ],
      ),
      body:HomeBody()
    );
  }
}
