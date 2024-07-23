import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'state/product_provider.dart';
import 'state/auth_provider.dart';
import 'state/cart_provider.dart';
import 'views/home_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductProvider()),
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: const MyApp(), // Use 'const' here
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Converted 'key' to a super parameter

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter E-Commerce',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(), // Use 'const' here if HomePage constructor is const
    );
  }
}





