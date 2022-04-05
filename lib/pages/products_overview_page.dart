import 'package:flutter/material.dart';
import 'package:shop/components/product_grid.dart';

enum FilterOptions { favorite, all }

class ProductsOverviewPage extends StatelessWidget {
  const ProductsOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            itemBuilder: (_) => [
              const PopupMenuItem(
                  child: Text("Somente Favoritos"),
                  value: FilterOptions.favorite),
              const PopupMenuItem(
                  child: Text("Todos"), value: FilterOptions.all),
            ],
            onSelected: (FilterOptions selectedValue) {},
          ),
        ],
        title: const Center(
          child: Text('Minha loja'),
        ),
      ),
      body: const ProductGrid(),
    );
  }
}
