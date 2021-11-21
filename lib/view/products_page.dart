import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_management/data/products_json.dart';
import 'package:state_management/model/product.dart';
import 'package:state_management/model/products_list.dart';

import 'cart_page.dart';
import 'main.dart';

class ProductsPage extends ConsumerWidget {
  ProductsPage({Key? key, required String title}) : super(key: key);

  final List<Product> _productList =
      ProductsList.fromJson(jsonDecode(products_json_string) as List<dynamic>)
          .products;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final CartState provider = ref.watch(cartStateProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => CartItemsPage(),
              ),
            ),
            icon: Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: Container(
        child: ListView.builder(
            itemCount: _productList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Image.network(_productList[index].image),
                title: Text(_productList[index].name),
                subtitle: Text(_productList[index].description),
                onTap: () => {provider.addToCart(_productList[index])},
              );
            }),
      ),
    );
  }
}
