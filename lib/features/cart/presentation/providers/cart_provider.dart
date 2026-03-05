import 'package:flutter/material.dart';

import '../../domain/entities/product.dart';
import '../../domain/repositories/cart_repository.dart';

class CartProvider extends ChangeNotifier {
  final CartRepository repository;

  CartProvider({required this.repository});

  List<Product> get items => repository.getCartItems();

  void addItem(Product product) {
    repository.addItem(product);
    notifyListeners();
  }

  void removeAll() {
    repository.removeAllItems();
    notifyListeners();
  }

  bool isInCart(String productId) {
    return repository.isItemInCart(productId);
  }
}