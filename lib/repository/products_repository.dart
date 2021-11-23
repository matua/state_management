import 'package:state_management/data/model/product.dart';

abstract class ProductsRepository {
  const ProductsRepository();

  Future<List<Product>> loadProducts();
}

class ConstProductsRepository extends ProductsRepository {
  const ConstProductsRepository();

  static List<Product> _allProducts = <Product>[
    Product(1, 'Vulpes chama', 'Fox, silver-backed',
        'http://dummyimage.com/234x100.png/5fa2dd/ffffff'),
    Product(2, 'Camelus dromedarius', 'Camel, dromedary',
        'http://dummyimage.com/147x100.png/dddddd/000000'),
    Product(3, 'Amblyrhynchus cristatus', 'Marine iguana',
        'http://dummyimage.com/125x100.png/ff4444/ffffff'),
    Product(4, 'Lasiorhinus latifrons', 'Wombat, southern hairy-nosed',
        'http://dummyimage.com/186x100.png/dddddd/000000'),
    Product(5, 'Genetta genetta', 'Genet, small-spotted',
        'http://dummyimage.com/196x100.png/5fa2dd/ffffff'),
    Product(6, 'Procyon cancrivorus', 'Fox, silver-backed',
        'http://dummyimage.com/234x100.png/5fa2dd/ffffff'),
    Product(7, 'Ciconia episcopus', 'White-necked stork',
        'http://dummyimage.com/159x100.png/cc0000/ffffff'),
    Product(8, 'Paradoxurus hermaphroditus', 'Fox, silver-backed',
        'http://dummyimage.com/234x100.png/5fa2dd/ffffff'),
    Product(9, 'Crotalus cerastes', 'Sidewinder',
        'http://dummyimage.com/234x100.png/5fa2dd/ffffff'),
    Product(10, 'Petaurus breviceps', 'Glider, sugar',
        'http://dummyimage.com/211x100.png/dddddd/000000'),
  ];

  @override
  Future<List<Product>> loadProducts() async {
    return _allProducts;
  }
}
