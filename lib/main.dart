import 'package:flutter/material.dart';
import 'package:instant_eats_foodapp/models/orders.dart';
import 'package:instant_eats_foodapp/screens/pdt_detail_screen.dart';
import 'file:///C:/Users/JEYASRI.A/AndroidStudioProjects/instant_eats_foodapp/lib/screens/homepage.dart';
import 'package:provider/provider.dart';
import 'package:instant_eats_foodapp/models/products.dart';
import 'package:instant_eats_foodapp/models/cart.dart';
import 'package:instant_eats_foodapp/screens/cart_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
            value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        )
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false ,
        title: 'Instant Eats',
        theme: ThemeData(
          primaryColor: Colors.deepOrange,
          accentColor: Colors.white

        ),
        home: HomePage(),
        routes: {
          DetailPage.routeName:(ctx)=>DetailPage(),
          CartScreen.routeName:(ctx)=>CartScreen()
        },
      ),
    );
  }
}
