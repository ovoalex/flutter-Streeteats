import 'package:equatable/equatable.dart';

class MenuItem extends Equatable {
  final int id;
  final int restaurantId;
  final String name;
  final String category;
  final String description;
  final double price;

  MenuItem({
    required this.id,
    required this.restaurantId,
    required this.name,
    required this.category,
    required this.description,
    required this.price,
  });

  @override
  List<Object?> get props => [
        id,
        restaurantId,
        name,
        category,
        description,
        price,
      ];

  static List<MenuItem> menuItems = [
    MenuItem(
      id: 1,
      restaurantId: 1,
      name: 'Carne Asada Taco',
      category: 'Taco',
      description: 'Asada, Onions, Cilantro,',
      price: 1.99,
    ),
    MenuItem(
      id: 2,
      restaurantId: 1,
      name: 'Pollo Asado Taco',
      category: 'Taco',
      description: 'Pollo, Onions, Cilantro',
      price: 1.99,
    ),
    MenuItem(
      id: 3,
      restaurantId: 1,
      name: 'Al Pastor Taco',
      category: 'Taco',
      description: 'Al Pastor, Onions, Cilantro',
      price: 1.99,
    ),
    MenuItem(
      id: 4,
      restaurantId: 1,
      name: 'Muchaco Taco',
      category: 'Taco',
      description: 'Special Taco, Onions, Cilantro',
      price: 3.99,
    ),
    MenuItem(
      id: 5,
      restaurantId: 1,
      name: 'Coca Cola',
      category: 'Drink',
      description: 'Cocacola',
      price: 1.99,
    ),
    MenuItem(
      id: 6,
      restaurantId: 1,
      name: 'Pineapple Jerrito',
      category: 'Drink',
      description: 'Pineapple Jerrito',
      price: 1.99,
    ),
    MenuItem(
      id: 7,
      restaurantId: 1,
      name: 'Mandarin Jerrito',
      category: 'Drink',
      description: 'Mandarin Jerrito',
      price: 1.99,
    ),
    MenuItem(
      id: 8,
      restaurantId: 1,
      name: 'Sprite',
      category: 'Drink',
      description: 'Sprite',
      price: 1.99,
    ),
    MenuItem(
      id: 1,
      restaurantId: 2,
      name: 'Gypsy Burger',
      category: 'House',
      description: 'Beef, Onions, Organic',
      price: 2.99,
    ),
    MenuItem(
      id: 2,
      restaurantId: 2,
      name: 'Gypsy Soup',
      category: 'House',
      description: 'Oragnic meat, Onions, Cilantro',
      price: 4.99,
    ),
    MenuItem(
      id: 3,
      restaurantId: 2,
      name: 'Gypsy Stew',
      category: 'House',
      description: 'Catch of the day, Onions, Cilantro',
      price: 4.99,
    ),
    MenuItem(
      id: 4,
      restaurantId: 2,
      name: 'Gypsy Fish',
      category: 'Taco',
      description: 'Fresh Catch of the day, Onions, Cilantro',
      price: 4.99,
    ),
    MenuItem(
      id: 5,
      restaurantId: 2,
      name: 'Coca Cola',
      category: 'Drink',
      description: 'Cocacola',
      price: 1.99,
    ),
    MenuItem(
      id: 6,
      restaurantId: 2,
      name: 'Perrier',
      category: 'Drink',
      description: 'Perrier',
      price: 1.99,
    ),
    MenuItem(
      id: 7,
      restaurantId: 2,
      name: 'Bottle Water',
      category: 'Drink',
      description: 'Bottle water',
      price: 1.99,
    ),
    MenuItem(
      id: 8,
      restaurantId: 2,
      name: 'Sprite',
      category: 'Drink',
      description: 'Sprite',
      price: 1.99,
    ),

    MenuItem(
      id: 1,
      restaurantId: 3,
      name: 'Carne Asada Pupusa',
      category: 'Taco',
      description: 'Asada, Onions, Cilantro,',
      price: 2.99,
    ),
    MenuItem(
      id: 2,
      restaurantId: 3,
      name: 'Pollo Asado Pupusa',
      category: 'Taco',
      description: 'Pollo, Onions, Cilantro',
      price: 2.99,
    ),
    MenuItem(
      id: 3,
      restaurantId: 3,
      name: 'Al Pastor Pupusa',
      category: 'Taco',
      description: 'Al Pastor, Onions, Cilantro',
      price: 2.99,
    ),
    MenuItem(
      id: 4,
      restaurantId: 3,
      name: 'House Pupusa',
      category: 'Taco',
      description: 'Special Taco, Onions, Cilantro',
      price: 2.99,
    ),
    MenuItem(
      id: 5,
      restaurantId: 3,
      name: 'Coca Cola',
      category: 'Drink',
      description: 'Cocacola',
      price: 1.99,
    ),
    MenuItem(
      id: 6,
      restaurantId: 3,
      name: 'Pineapple Jerrito',
      category: 'Drink',
      description: 'Pineapple Jerrito',
      price: 1.99,
    ),
    MenuItem(
      id: 7,
      restaurantId: 3,
      name: 'Mandarin Jerrito',
      category: 'Drink',
      description: 'Mandarin Jerrito',
      price: 1.99,
    ),
    MenuItem(
      id: 8,
      restaurantId: 3,
      name: 'Sprite',
      category: 'Drink',
      description: 'Sprite',
      price: 1.99,
    ),

    MenuItem(
      id: 1,
      restaurantId: 4,
      name: 'Fresh Catch of the day',
      category: 'Fish & Chips',
      description: 'Fresh Catch',
      price: 14.99,
    ),
    MenuItem(
      id: 2,
      restaurantId: 4,
      name: 'Cod',
      category: 'Fish & Chips',
      description: 'Cod',
      price: 11.99,
    ),
    MenuItem(
      id: 3,
      restaurantId: 4,
      name: 'Classic',
      category: 'Fish & Chips',
      description: 'House fish',
      price: 9.99,
    ),
    MenuItem(
      id: 4,
      restaurantId: 4,
      name: 'Talapia',
      category: 'Fish & Chips',
      description: 'Talapia',
      price: 7.99,
    ),
    MenuItem(
      id: 5,
      restaurantId: 4,
      name: 'Coca Cola',
      category: 'Drink',
      description: 'Cocacola',
      price: 1.99,
    ),
    MenuItem(
      id: 6,
      restaurantId: 4,
      name: 'Perrier',
      category: 'Drink',
      description: 'Sparking Water',
      price: 1.99,
    ),
    MenuItem(
      id: 7,
      restaurantId: 4,
      name: 'Fanta Orange',
      category: 'Drink',
      description: 'Orange Fanta',
      price: 1.99,
    ),
    MenuItem(
      id: 8,
      restaurantId: 4,
      name: 'Sprite',
      category: 'Drink',
      description: 'Sprite',
      price: 1.99,
    ),

    MenuItem(
      id: 1,
      restaurantId: 5,
      name: 'Latte',
      category: 'Hot',
      description: 'Milk, Caffeine',
      price: 5.99,
    ),
    MenuItem(
      id: 2,
      restaurantId: 5,
      name: 'Oak Latte',
      category: 'Hot',
      description: 'Milk, Caffeine',
      price: 5.99,
    ),
    MenuItem(
      id: 3,
      restaurantId: 5,
      name: 'Cappuccino',
      category: 'Hot',
      description: 'Milk, Caffeine',
      price: 5.99,
    ),
    MenuItem(
      id: 4,
      restaurantId: 5,
      name: 'Cold Brew',
      category: 'Cold',
      description: 'Milk, Caffeine',
      price: 4.99,
    ),
    MenuItem(
      id: 5,
      restaurantId: 5,
      name: 'Vanilla Ice Latte',
      category: 'Cold',
      description: 'Milk, Caffeine',
      price: 4.99,
    ),
    MenuItem(
      id: 6,
      restaurantId: 5,
      name: 'Croissant',
      category: 'Food',
      description: 'Wheat',
      price: 2.99,
    ),
    MenuItem(
      id: 7,
      restaurantId: 5,
      name: 'Perrier',
      category: 'Bottle',
      description: 'Sparking water',
      price: 1.99,
    ),
    MenuItem(
      id: 8,
      restaurantId: 5,
      name: 'Box Water',
      category: 'Bottle',
      description: 'Water',
      price: 1.99,
    ),
  ];
}
