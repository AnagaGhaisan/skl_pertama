import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  void addItem(Item item, int quantity) {
    _items.add(CartItem(item: item, quantity: quantity));
    notifyListeners();
  }
}

class CartItem {
  final Item item;
  final int quantity;

  CartItem({required this.item, required this.quantity});
}

class Item {
  final String name;
  final double price;

  Item({required this.name, required this.price});
}
