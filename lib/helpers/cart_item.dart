// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_shop/model/cart.dart';

import 'package:sneakers_shop/model/shoes.dart';

// ignore: must_be_immutable
class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({
    Key? key,
    required this.shoe,
  }) : super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemfromcart() {
    Provider.of<Cart>(context, listen: false).removeItemfromcart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(
            onPressed: removeItemfromcart, icon: const Icon(Icons.delete)),
      ),
    );
  }
}
