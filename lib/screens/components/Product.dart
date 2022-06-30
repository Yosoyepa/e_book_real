import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Book 1",
      price: 50,
      size: 12,
      description: dummyText,
      image: "assets/book 1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Book 2",
      price: 60,
      size: 8,
      description: dummyText,
      image: "assets/book3.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Book 3",
      price: 70,
      size: 10,
      description: dummyText,
      image: "assets/book 1.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Book 4",
      price: 10,
      size: 11,
      description: dummyText,
      image: "assets/book3.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Book 5",
      price: 45,
      size: 12,
      description: dummyText,
      image: "assets/book 1.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Book 6",
    price: 98,
    size: 12,
    description: dummyText,
    image: "assets/book3.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
