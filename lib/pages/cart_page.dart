import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_shop/model/cart.dart';

import '../helpers/cart_item.dart';
import '../model/shoes.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "My Cart",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: (ListView.builder(
                    itemCount: value.getUserCart().length,
                    itemBuilder: (context, index) {
                      //get individual shoe
                      Shoe individualShoe = value.getUserCart()[index];

                      //return cart item

                      return CartItem(
                        shoe: individualShoe,
                      );
                    })))
          ],
        ),
      ),
    );
  }
}
