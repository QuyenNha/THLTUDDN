import 'package:flutter/material.dart';

import 'Product.dart';

class Fav {
  final Product product;


  Fav({required this.product});
}

List<Fav> demoFav = [
  Fav(product: demoProducts[0]),
  Fav(product: demoProducts[1]),
  Fav(product: demoProducts[2]),
];
