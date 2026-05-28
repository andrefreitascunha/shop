import 'package:flutter/material.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product.dart';

class ProductList with ChangeNotifier {
  // Popula lista de produtos
  List<Product> _items = dummyProducts;
  bool _showFavoriteOnly = false;

  // Método get fornece a lista como um clone
  List<Product> get items {
    if (_showFavoriteOnly) {
      return _items.where((prod) => prod.isFavorite).toList();
    }
    return [..._items];
  }

  void showFavoriteOnly() {
    _showFavoriteOnly = true;
    notifyListeners();
  }
  void showAll() {
    _showFavoriteOnly = false;
    notifyListeners();
  }

  // Método para adicionar produtos
  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}
