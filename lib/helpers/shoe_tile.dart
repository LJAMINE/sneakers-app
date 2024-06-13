// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../model/shoes.dart';

// ignore: must_be_immutable
class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({
    Key? key,
    required this.shoe,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // shoe image
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(shoe.imagePath),
          ),

          //descrip
          Text(
            shoe.description,
            style: TextStyle(color: Colors.grey[800]),
          ),
          //price+detail
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  children: [
                    Text(
                      shoe.name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "\$${shoe.price}",
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: onTap,
                child: Container(
                  padding: const EdgeInsets.all(25),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          //add to card
        ],
      ),
    );
  }
}
