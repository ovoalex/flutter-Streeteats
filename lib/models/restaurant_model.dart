import 'package:equatable/equatable.dart';

import 'menu_item_model.dart';

class Restaurant extends Equatable {
  final int id;
  final String name;
  final String imageUrl;
  final List<String> tags;
  final List<MenuItem> menuItems;
  final int deliveryTime;
  final double deliveryFee;
  final double distance; // TODO: Calculate distance between user and restaurant

  const Restaurant({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.tags,
    required this.menuItems,
    required this.deliveryTime,
    required this.deliveryFee,
    required this.distance,
  });

  @override
  List<Object> get props {
    return [
      id,
      name,
      imageUrl,
      tags,
      menuItems,
      deliveryTime,
      deliveryFee,
      distance,
    ];
  }

  static List<Restaurant> restaurants = [
    Restaurant(
      id: 1,
      name: 'Muchaco Taco',
      imageUrl:
          'https://images.unsplash.com/photo-1599974579688-8dbdd335c77f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1194&q=80',
      tags: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 1)
          .map((menuItem) => menuItem.category)
          .toSet()
          .toList(),
      menuItems: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 1)
          .toList(),
      deliveryTime: 20,
      deliveryFee: 0.99,
      distance: 1.5,
    ),
    Restaurant(
      id: 2,
      name: 'Gypsy Kitchen',
      imageUrl:
          'https://images.unsplash.com/photo-1633260682035-b6270ab1b314?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1951&q=80',
      tags: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 2)
          .map((menuItem) => menuItem.category)
          .toSet()
          .toList(),
      menuItems: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 2)
          .toList(),
      deliveryTime: 25,
      deliveryFee: 0.99,
      distance: 1.5,
    ),
    Restaurant(
      id: 3,
      name: 'Pupusaria',
      imageUrl:
          'https://media.istockphoto.com/photos/latin-american-food-arepas-being-prepared-at-brick-lane-market-in-picture-id1193263966?b=1&k=20&m=1193263966&s=170667a&w=0&h=sjQ4LLn6VLusk1t16rRZD8R_6jzMSNfzkc5l2rglIM4=',
      tags: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 3)
          .map((menuItem) => menuItem.category)
          .toSet()
          .toList(),
      menuItems: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 3)
          .toList(),
      deliveryTime: 20,
      deliveryFee: 0.99,
      distance: 1.7,
    ),
    Restaurant(
      id: 4,
      name: 'Jim`s Fish and Chips',
      imageUrl:
          'https://images.unsplash.com/photo-1620589125156-fd5028c5e05b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1187&q=80',
      tags: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 4)
          .map((menuItem) => menuItem.category)
          .toSet()
          .toList(),
      menuItems: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 4)
          .toList(),
      deliveryTime: 20,
      deliveryFee: 0.99,
      distance: 1.9,
    ),
    Restaurant(
      id: 5,
      name: 'The Little Cafe',
      imageUrl:
          'https://images.unsplash.com/reserve/DHHQbqc0RrWVf0uDNe5E_The%20Litte%20Cafe.jpg?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80',
      tags: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 5)
          .map((menuItem) => menuItem.category)
          .toSet()
          .toList(),
      menuItems: MenuItem.menuItems
          .where((menuItem) => menuItem.restaurantId == 5)
          .toList(),
      deliveryTime: 15,
      deliveryFee: 0.99,
      distance: 1.3,
    )
  ];
}
