import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Category extends Equatable {
  final int id;
  final String name;
  final Image image;

  Category({
    required this.id,
    required this.name,
    required this.image,
  });

  @override
  List<Object?> get props => [name, image];

  static List<Category> categories = [
    Category(
      id: 1,
      name: 'Tacos',
      image: Image.asset(
        'assets/tacoIcon.png',
      ),
    ),
    Category(
      id: 2,
      name: 'Tamale',
      image: Image.asset(
        'assets/tamaleIcon.png',
      ),
    ),
    Category(
      id: 3,
      name: 'Pupusa',
      image: Image.asset(
        'assets/pupusaIcon2.png',
        height: 50,
        width: 40,


      ),
    ),
    Category(
      id: 4,
      name: 'Pollos',
      image: Image.asset(
        'assets/chickenIcon.png',
      ),
    ),
    Category(
      id: 5,
      name: 'Drink',
      image: Image.asset(
        'assets/juice.png',
      ),
    ),
  ];
}
