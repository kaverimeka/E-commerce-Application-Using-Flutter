// lib/state/product_provider.dart

import 'package:flutter/material.dart';
import '../models/product.dart';
import '../services/api_service.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _products = [];

  bool _isFetching = false;

  List<Product> get products => _products;
  bool get isFetching => _isFetching;

  Future<void> fetchProducts() async {
    _isFetching = true;
    notifyListeners();

    try {
      List<Product> newProducts = await ApiService().fetchProducts(10, _products.length);
      _products.addAll(newProducts);
    } catch (e) {
      // Handle error
    } finally {
      _isFetching = false;
      notifyListeners();
    }
  }

  Future<List<Product>> searchProducts(String query) async {
    return await ApiService().searchProducts(query);
  }
}


