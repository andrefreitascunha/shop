import 'package:flutter/material.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product.dart';

class ProductList with ChangeNotifier {
  // Popula lista de produtos
  List<Product> _items = dummyProducts;

  // Método get fornece a lista como um clone
  List<Product> get items => [..._items];

  // Método para adicionar produtos
  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}
