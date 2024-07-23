import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({super.key, required this.product}); // Use 'super.key' shorthand

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(product.image),
            const SizedBox(height: 16.0),
            Text(
              product.title,
              style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(
              '\$${product.price}',
              style: const TextStyle(fontSize: 20.0, color: Colors.green),
            ),
            const SizedBox(height: 8.0),
            Text(product.description),
            const SizedBox(height: 8.0),
            Text('Rating: ${product.rating}'),
          ],
        ),
      ),
    );
  }
}



