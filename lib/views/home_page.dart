import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state/product_provider.dart';
import '../models/product.dart';
import 'product_detail_page.dart';

class HomePage extends StatelessWidget {
 const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (scrollInfo) {
          if (!productProvider.isFetching && scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
            productProvider.fetchProducts();
          }
          return true;
        },
        child: ListView.builder(
          itemCount: productProvider.products.length + (productProvider.isFetching ? 1 : 0),
          itemBuilder: (context, index) {
            if (index == productProvider.products.length) {
              return const Center(child: CircularProgressIndicator());
            }
            Product product = productProvider.products[index];
            return ListTile(
              title: Text(product.title),
              subtitle: Text("\$${product.price}"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductDetailPage(product: product)),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
