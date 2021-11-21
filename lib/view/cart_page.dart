import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/src/provider.dart';
import 'package:state_management/model/product.dart';

import 'main.dart';

class CartItemsPage extends StatelessWidget {
  CartItemsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Product> _cartList = context.watch<CartState>().cartProducts;

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Consumer<CartState>(
          builder: (context, state, child) => ListView.builder(
              itemCount: _cartList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Image.network(_cartList[index].image),
                  title: Text(_cartList[index].name),
                  subtitle: Text(_cartList[index].description),
                  onTap: () => {},
                );
              }),
        ),
      ),
    );
  }
}
