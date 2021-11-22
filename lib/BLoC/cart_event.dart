import 'package:state_management/data/model/product.dart';

abstract class CartEvent {}

class AddProductEvent extends CartEvent {
  AddProductEvent({required this.product});

  final Product product;
}
