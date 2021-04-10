import 'package:flutter/foundation.dart';
class Product with ChangeNotifier{
  final String id;
  final String category;
  final String name;
  final String description;
  final String imgUrl;
  final double price;


  Product(
      {@required this.id,
        @required this.category,
        @required this.name,
        @required this.description,
        @required this.imgUrl,
        @required this.price});

}

class Products with ChangeNotifier{
  List<Product> _items=[
    Product(
      id: '1',
      name:'Burger',
      imgUrl: 'https://media1.s-nbcnews.com/i/newscms/2019_21/2870431/190524-classic-american-cheeseburger-ew-207p_d9270c5c545b30ea094084c7f2342eb4.jpg',
      price: 50,
      category: 'FastFood',
      description: ' A hamburger topped with cheese is called a cheeseburger',
    ),
    Product(
      id: '2',
      name:'Watermelon',
      imgUrl: 'https://www.preciouscore.com/wp-content/uploads/2018/08/Watermelon-Mint-Juice.jpg',
      price: 25,
      category: 'Drinks',
      description: ' A hamburger topped with cheese is called a cheeseburger',
    ),
    Product(
      id: '3',
      name:'Chicken Noodles',
      imgUrl: 'https://www.indianhealthyrecipes.com/wp-content/uploads/2017/11/chicken-noodles-recipe.jpg',
      price: 45,
      category: 'FastFood',
      description: 'A hamburger topped with cheese is called a cheeseburger',
    ),
    Product(
      id: '4',
      name:'Pen',
      imgUrl: 'https://5.imimg.com/data5/RO/UP/MY-31666046/ball-pen-gripper-500x500.jpg',
      price: 35,
      category: 'Stationary Items',
      description: ' A hamburger topped with cheese is called a cheeseburger',
    ),
    Product(
      id: '5',
      name:'Meals',
      imgUrl: 'https://www.samaa.tv/wp-content/uploads/2017/09/meals.jpg',
      price: 60,
      category: 'Meals',
      description: ' A hamburger topped with cheese is called a cheeseburger',
    ),
    Product(
      id: '6',
      name:'vibro',
      imgUrl: 'https://www.kalimarkbovonto.com/images/year-bottle3.png',
      price: 10,
      category: 'Drinks',
      description: ' A hamburger topped with cheese is called a cheeseburger',
    ),

  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((pdt) => pdt.id == id);
  }
}