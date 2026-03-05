import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../domain/entities/product.dart';
import '../providers/cart_provider.dart';

class AddButtonWidget extends StatelessWidget {
  final Product product;

  const AddButtonWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final isInCart = context.select<CartProvider, bool>(
      (provider) => provider.isInCart(product.id),
    );

    return TextButton(
      onPressed: isInCart
          ? null
          : () {
              context.read<CartProvider>().addItem(product);
            },
      child: Text(
        isInCart ? 'Sudah ditambahkan' : 'Tambah',
      ),
    );
  }
}