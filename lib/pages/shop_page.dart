import 'package:flutter/material.dart';
import 'package:minimal_shopping_app/components/my_drawer.dart';
import 'package:minimal_shopping_app/components/my_product_tile.dart';
import 'package:minimal_shopping_app/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Shop Page"),
          actions: [
            IconButton(
              onPressed: () => Navigator.pushNamed(context, "/cart_page"),
              icon: const Icon(Icons.shopping_cart_outlined),
            ),
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        drawer: const MyDrawer(),
        body: ListView(
          children: [
            const SizedBox(height: 25),
            Center(
              child: Text(
                "Pick from a selected list of Premium Products",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),
            SizedBox(
              height: 550,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.all(15),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return MyProductTile(product: product);
                  }),
            ),
          ],
        ));
  }
}
