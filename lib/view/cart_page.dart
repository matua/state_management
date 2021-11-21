import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_management/model/product.dart';

import 'main.dart';

class CartItemsPage extends ConsumerWidget {
  CartItemsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Product> _cartList = ref.watch(cartStateProvider);

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView.builder(
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
    );
  }
}