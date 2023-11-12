import 'package:flutter/material.dart';
import 'package:minimal_shopping_app/models/product.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
      name: "Product 1",
      description: "description 1",
      price: 99.99,
      imagePath: "assets/watch.webp",
    ),
    Product(
      name: "Product 2",
      description: "description 2",
      price: 99.99,
      imagePath: "assets/hoddy.jpg",
    ),
    Product(
      name: "Product 3",
      description: "description 3",
      price: 99.99,
      imagePath: "assets/shoes.jpg",
    ),
    Product(
      name: "Product 4",
      description: "description 4",
      price: 99.99,
      imagePath: "assets/sunglass.webp",
    ),
  ];

  List<Product> _cart = [];

  List<Product> get shop => _shop;

  List<Product> get cart => _cart;

  void addToCart(Product product) {
    _cart.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    _cart.remove(product);
    notifyListeners();
  }
}
