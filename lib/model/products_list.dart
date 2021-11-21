import 'package:state_management/model/product.dart';

class ProductsList {
  ProductsList(
    this._products,
  );

  factory ProductsList.fromJson(List<dynamic> parsedJsonProducts) {
    final List<Product> products = parsedJsonProducts
        .map((dynamic jsonProduct) =>
            Product.fromJson(jsonProduct as Map<String, dynamic>))
        .toList();

    return ProductsList(products);
  }

  List<Product> _products;

  List<Product> get products => _products;
}
