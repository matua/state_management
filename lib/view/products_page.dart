import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:state_management/BLoC/CartBloc.dart';
import 'package:state_management/BLoC/cart_event.dart';
import 'package:state_management/data/model/product.dart';
import 'package:state_management/data/model/products_list.dart';
import 'package:state_management/data/products_json.dart';

import '../service_provider.dart';
import 'cart_page.dart';

class ProductsPage extends StatefulWidget {
  ProductsPage({Key? key, required String title}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final List<Product> _productList =
      ProductsList.fromJson(jsonDecode(products_json_string) as List<dynamic>)
          .products;

  final CartBloc _bloc = bp.get<BlocService>().getBloc();

  @override
  Widget build(BuildContext context) {
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
                onTap: () => _bloc.cartEventSink
                    .add(AddProductEvent(product: _productList[index])),
              );
            }),
      ),
    );
  }
}
