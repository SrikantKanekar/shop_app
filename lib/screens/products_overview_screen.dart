import 'package:flutter/material.dart';
import 'package:shop_app/screens/cart_screen.dart';
import 'package:shop_app/widgets/product_grid.dart';
import '../widgets/drawer.dart';

class ProductsOverviewScreen extends StatelessWidget {
  const ProductsOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        actions: [
          IconButton(
            onPressed: () => {
              Navigator.of(context).pushNamed(CartScreen.routeName),
            },
            icon: const Icon(Icons.shopping_cart),
          ),
          PopupMenuButton(
            itemBuilder: (_) => [
              const PopupMenuItem(
                child: Text('All'),
                value: FilterOptions.all,
              ),
              const PopupMenuItem(
                child: Text('Favourites'),
                value: FilterOptions.favourites,
              )
            ],
            onSelected: (FilterOptions selectedValue) {},
          )
        ],
      ),
      drawer: AppDrawer(),
      body: ProductGrid(),
    );
  }
}

enum FilterOptions { all, favourites }
