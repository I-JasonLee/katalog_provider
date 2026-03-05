import 'package:flutter/material.dart';

import '../../domain/entities/product.dart';
import '../widgets/add_button_widget.dart';
import '../../../../core/routes/app_router.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  static final List<Product> products = [
    Product(id: '1', name: 'Nasi Goreng', price: 15000),
    Product(id: '2', name: 'Sate Ayam', price: 20000),
    Product(id: '3', name: 'Es Teh', price: 5000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Katalog Makanan'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRouter.cart);
            },
            child: const Text('Keranjang'),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return ListTile(
            title: Text(product.name),
            subtitle: Text('Harga: ${product.price}'),
            trailing: AddButtonWidget(product: product),
          );
        },
      ),
    );
  }
}