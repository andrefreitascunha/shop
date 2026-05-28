import 'package:flutter/material.dart';

import '../components/product_grid.dart';

class ProductOverviewPage extends StatelessWidget {
  const ProductOverviewPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Minha Loja')),
      body: ProductGrid(),
    );
  }
}
