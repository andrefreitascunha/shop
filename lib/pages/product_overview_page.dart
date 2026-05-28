import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/product_list.dart';

import '../components/product_grid.dart';

enum FilterOptions {
  Favorite,
  All,
}

class ProductOverviewPage extends StatelessWidget {
  const ProductOverviewPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductList>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Loja'),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
              PopupMenuItem(child: Text('Somente favoritos'), value: FilterOptions.Favorite),
              PopupMenuItem(child: Text('Todos'), value: FilterOptions.All),
            ],
            onSelected: (FilterOptions selectedValue){
              if (selectedValue == FilterOptions.Favorite){
                provider.showFavoriteOnly();
              } else {
                provider.showAll();
              }
              print(selectedValue);
            },
          ),
        ],
      ),
      body: ProductGrid(),
    );
  }
}
