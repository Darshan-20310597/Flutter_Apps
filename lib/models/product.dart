import 'package:flutter/material.dart';

class Product {
  String image, title, description;
  final int price, size, id;
  final Color color;

  Product(
      {this.id,
      this.image,
      this.title,
      this.description,
      this.price,
      this.size,
      this.color});
}

List<Product> products = [
  Product(
    id: 1,
    title: "Office bag",
    price: 243,
    size: 12,
    description:
        "Dummy Bag Dummy Bag Dummy Bag Dummy Bag Dummy Bag Dummy Bag Dummy Bag.Dummy Bag Dummy Bag Dummy Bag Dummy Bag Dummy Bag Dummy Bag",
    image: "assets/images/bag_1.png",
    color: Color(0xFF3D82AE),
  ),
  Product(
    id: 2,
    title: "Belt bag",
    price: 243,
    size: 12,
    description: "Dummy Bag",
    image: "assets/images/bag_2.png",
    color: Color(0xFFD3A984),
  ),
  Product(
    id: 3,
    title: "Hang bag",
    price: 112,
    size: 12,
    description: "Dummy Bag",
    image: "assets/images/bag_3.png",
    color: Color(0xFF989493),
  ),
  Product(
    id: 4,
    title: "Old bag",
    price: 574,
    size: 12,
    description: "Dummy Bag",
    image: "assets/images/bag_4.png",
    color: Color(0xFFE6B398),
  ),
  Product(
    id: 5,
    title: "Formal bag",
    price: 243,
    size: 12,
    description: "Dummy Bag",
    image: "assets/images/bag_5.png",
    color: Color(0xFFFB7883),
  ),
  Product(
    id: 6,
    title: "Not so formal bag",
    price: 155,
    size: 12,
    description: "Dummy Bag",
    image: "assets/images/bag_6.png",
    color: Color(0xFF000000),
  ),
];
