import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state/cart_provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: FutureBuilder(
        future: cartProvider.fetchProducts(), // Ensure products are loaded
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
            itemCount: cartProvider.cartItems.length,
            itemBuilder: (context, index) {
              final productId = cartProvider.cartItems.keys.elementAt(index);
              final quantity = cartProvider.cartItems[productId]!;
              final product = cartProvider.getProductById(productId);

              if (product == null) {
                return ListTile(
                  title: const Text('Product not found'),
                  subtitle: Text('Quantity: $quantity'),
                );
              }

              return ListTile(
                leading: Image.network(product.image),
                title: Text(product.title),
                subtitle: Text('Quantity: $quantity'),
                trailing: Text('\$${product.price * quantity}'),
                onTap: () {
                  // Navigate to product detail page if needed
                },
              );
            },
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total: \$${cartProvider.totalPrice}',
              style: const TextStyle(fontSize: 20.0),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement checkout logic
              },
              child: const Text('Checkout'),
            ),
          ],
        ),
      ),
    );
  }
}










