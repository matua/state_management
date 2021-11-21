import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_management/model/product.dart';
import 'package:state_management/view/products_page.dart';

final StateNotifierProvider<CartState, List<Product>> cartStateProvider =
    StateNotifierProvider<CartState, List<Product>>((_) => CartState());

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class CartState extends StateNotifier<List<Product>> {
  CartState() : super(<Product>[].toList());

  void addToCart(Product product) {
    state.add(product);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductsPage(title: 'Products'),
    );
  }
}
