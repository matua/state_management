import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:state_management/data/products_json.dart';
import 'package:state_management/model/product.dart';
import 'package:state_management/model/products_list.dart';

class CartItemsPage extends StatelessWidget {
  CartItemsPage({Key? key}) : super(key: key);

  final List<Product> _productList =
      ProductsList.fromJson(jsonDecode(products_json_string) as List<dynamic>)
          .products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView.builder(
            itemCount: _productList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Image.network(_productList[index].image),
                title: Text(_productList[index].name),
                subtitle: Text(_productList[index].description),
                onTap: () => {},
              );
            }),
      ),
    );
  }
}
