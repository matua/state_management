import 'dart:async';

import 'package:state_management/data/model/product.dart';

import 'cart_event.dart';

abstract class Bloc {
  void dispose();
}

class CartBloc implements Bloc {
  List<Product> _products = List<Product>.empty().toList();

  final StreamController<List<Product>> _cartStateController =
      StreamController<List<Product>>();

  StreamSink<List<Product>> get _inProducts => _cartStateController.sink;

  Stream<List<Product>> get products => _cartStateController.stream;

  final StreamController<CartEvent> _cartEventController =
      StreamController<CartEvent>();

  Sink<CartEvent> get cartEventSink => _cartEventController.sink;

  CartBloc() {
    _cartEventController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(CartEvent event) {
    if (event is AddProductEvent) {
      _products.add(event.product);
    }

    _inProducts.add(_products);
  }

  @override
  void dispose() {
    _cartStateController.close();
    _cartEventController.close();
  }
}
