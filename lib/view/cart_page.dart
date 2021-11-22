import 'package:flutter/material.dart';
import 'package:state_management/BLoC/CartBloc.dart';
import 'package:state_management/data/model/product.dart';

import '../service_provider.dart';

class CartItemsPage extends StatefulWidget {
  CartItemsPage({Key? key}) : super(key: key);

  @override
  State<CartItemsPage> createState() => _CartItemsPageState();
}

class _CartItemsPageState extends State<CartItemsPage> {
  final CartBloc _bloc = bp.get<BlocService>().getBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: StreamBuilder<List<Product>>(
            stream: _bloc.products,
            builder: (_, AsyncSnapshot<List<Product>> snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: Image.network(snapshot.data![index].image),
                        title: Text(snapshot.data![index].name),
                        subtitle: Text(snapshot.data![index].description),
                      );
                    });
              } else {
                return Center(
                    child: const Text(
                  'SOME ERROR OCCURRED',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ));
              }
            }),
      ),
    );
  }
}
