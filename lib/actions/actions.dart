import 'package:state_management/data/model/product.dart';

abstract class Action {}

abstract class ProductsAction extends Action {}

abstract class CartProductsAction extends Action {}

class LoadProductsAction extends ProductsAction {}

class ProductsLoadedAction extends ProductsAction {
  ProductsLoadedAction(this.products);

  final List<Product> products;
}

class LoadCartProductsAction extends CartProductsAction {}

class CartProductsLoadedAction extends CartProductsAction {
  CartProductsLoadedAction(this.products);

  final List<Product> products;
}

class UpdateCartProductsAction extends CartProductsAction {
  UpdateCartProductsAction({required this.product});

  final Product product;
}
