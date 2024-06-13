import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers_shop/model/cart.dart';

import '../helpers/shoe_tile.dart';
import '../model/shoes.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add soe to cart
  void addShoetocart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemtocart(shoe);
    //positive
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text("Successfully added    "),
        content: Text("check your cart"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                //search bar
                Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.symmetric(horizontal: 26),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(25)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Search",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(Icons.search, color: Colors.grey),
                    ],
                  ),
                ),
                //message
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child:
                      Text("Some people wears random but we provide the Best"),
                ),

                //hot picks
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hot Picks 🔥 ",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      //get shoe from shop list
                      Shoe shoe = value.getShoeList()[index];

                      return ShoeTile(
                        shoe: shoe,
                        onTap: () => addShoetocart(shoe),
                      );
                    },
                  ),
                ),
              ],
            ));
  }
}
