
import 'package:flutter/material.dart';
import 'package:instant_eats_foodapp/widgets/category_card.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryCard(
            Icon(Icons.local_drink_rounded,size: 40,),
            'Drinks'
          ),
          CategoryCard(
              Icon(Icons.fastfood_rounded,size: 40,),
              'Fastfood'
          ),
          CategoryCard(
              Icon(Icons.rice_bowl_rounded,size: 40,),
              'Meals'
          ),
          CategoryCard(
              Icon(Icons.menu_book_outlined,size: 40,),
              'Stationary Items'
          )
        ],
      ),
    );
  }
}
