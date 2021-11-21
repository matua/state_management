import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/model/product.dart';
import 'package:state_management/view/products_page.dart';

void main() {
  runApp(const MyApp());
}

class CartState with ChangeNotifier {
  List<Product> cartProducts = <Product>[].toList();

  void addToCart(Product product) {
    cartProducts.add(product);
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CartState>(
      create: (_) => CartState(),
      child: MaterialApp(
        title: 'State Management',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ProductsPage(title: 'Products'),
      ),
    );
  }
}
